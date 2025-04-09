import 'dart:developer';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/list/media_list.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

import 'media_list_card.dart';

class ListSection extends StatelessWidget {
  const ListSection({super.key, required this.section});

  final Query$MediaList$MediaListCollection$lists? section;

  @override
  Widget build(BuildContext context) {
    log('Rebuilding section: ${section?.name}');
    if (section == null || (section!.entries?.isEmpty ?? true)) {
      return const SizedBox();
    }
    return ExpandableNotifier(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section!.name ?? '',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontFamily: 'Poppins-Medium',
                ),
          ),
          const SizedBox(height: 10),
          (section!.entries!.length < 5)
              ? _buildList(length: section?.entries?.length ?? 0)
              : Expandable(
                  collapsed: Column(
                    children: [
                      _buildList(length: 4),
                      _buildExpandButton(isExpanded: false),
                    ],
                  ),
                  expanded: Column(
                    children: [
                      _buildList(length: section?.entries?.length ?? 0),
                      _buildExpandButton(isExpanded: true),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  Widget _buildExpandButton({required bool isExpanded}) {
    return ExpandableButton(
      theme: ExpandableThemeData(
        inkWellBorderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isExpanded ? 'See All' : 'See Fewer',
            style: const TextStyle(color: Colors.white),
          ),
          Icon(
            isExpanded
                ? Icons.keyboard_arrow_up_rounded
                : Icons.keyboard_arrow_down_rounded,
            color: AppColors.sunsetOrange,
          ),
        ],
      ),
    );
  }

  Widget _buildList({required int length}) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: length,
      itemBuilder: (context, index) {
        return MediaListCard(entry: section?.entries?[index]);
      },
    );
  }
}

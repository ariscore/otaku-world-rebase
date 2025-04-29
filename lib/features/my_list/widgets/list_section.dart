import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/list/media_list.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

import 'media_list_card.dart';

class ListSection extends StatefulWidget {
  const ListSection({
    super.key,
    required this.section,
    required this.scoreFormat,
  });

  final Query$MediaList$MediaListCollection$lists? section;
  final Enum$ScoreFormat scoreFormat;

  @override
  State<ListSection> createState() => _ListSectionState();
}

class _ListSectionState extends State<ListSection>
    with TickerProviderStateMixin {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    log('Rebuilding section: ${widget.section?.name} | Expanded: $isExpanded');
    if (widget.section == null || (widget.section!.entries?.isEmpty ?? true)) {
      return const SizedBox();
    }

    final isExpandable = widget.section!.entries!.length > 5;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.section!.name ?? '',
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontFamily: 'Poppins-Medium',
              ),
        ),
        const SizedBox(height: 10),
        !isExpandable
            ? _buildList(length: widget.section?.entries?.length ?? 0)
        : AnimatedSize(
          alignment: Alignment.topCenter,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          child: isExpanded
              ? _buildList(length: widget.section?.entries?.length ?? 0)
              : _buildList(length: 4),
        ),
        if (isExpandable)
          _buildExpandButton()
      ],
    );
  }

  Widget _buildExpandButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isExpanded ? 'See Fewer' : 'See All',
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
    return CustomScrollView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverList(
          // shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return MediaListCard(
                entry: widget.section?.entries?[index],
                scoreFormat: widget.scoreFormat,
              );
            },
            childCount: length,
          ),
        )
      ],
    );
  }
}

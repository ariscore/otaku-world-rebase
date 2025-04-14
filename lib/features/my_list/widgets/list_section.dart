import 'dart:developer';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/list/media_list.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

import 'media_list_card.dart';

class ListSection extends StatefulWidget {
  const ListSection({super.key, required this.section});

  final Query$MediaList$MediaListCollection$lists? section;

  @override
  State<ListSection> createState() => _ListSectionState();
}

class _ListSectionState extends State<ListSection> {
  final controller = ExpandableController();

  @override
  void initState() {
    controller.addListener(() {
      log('Expanded: ${controller.expanded}');
      if (controller.expanded) {
        // setState(() {
        //   log('Set state called');
        // });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('Rebuilding section: ${widget.section?.name}');
    if (widget.section == null || (widget.section!.entries?.isEmpty ?? true)) {
      return const SizedBox();
    }
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
        (widget.section!.entries!.length < 5)
            ? _buildList(length: widget.section?.entries?.length ?? 0)
            : ExpandableNotifier(
                controller: controller,
                child: Expandable(
                  collapsed: Column(
                    children: [
                      _buildList(length: 4),
                      _buildExpandButton(isExpanded: false),
                    ],
                  ),
                  expanded: Column(
                    children: [
                      _buildList(length: widget.section?.entries?.length ?? 0),
                      _buildExpandButton(isExpanded: true),
                    ],
                  ),
                ),
              ),
      ],
    );
  }

  Widget _buildExpandButton({required bool isExpanded}) {
    return TextButton(
      // theme: ExpandableThemeData(
      //   inkWellBorderRadius: BorderRadius.circular(10),
      // ),
      onPressed: () {
        controller.toggle();
        // Future.delayed(
        //   const Duration(seconds: 1),
        //   () {
        //     setState(() {});
        //   },
        // );
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
    // return ExpandableButton(
    //   theme: ExpandableThemeData(
    //     inkWellBorderRadius: BorderRadius.circular(10),
    //   ),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Text(
    //         isExpanded ? 'See Fewer' : 'See All',
    //         style: const TextStyle(color: Colors.white),
    //       ),
    //       Icon(
    //         isExpanded
    //             ? Icons.keyboard_arrow_up_rounded
    //             : Icons.keyboard_arrow_down_rounded,
    //         color: AppColors.sunsetOrange,
    //       ),
    //     ],
    //   ),
    // );
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
              return MediaListCard(entry: widget.section?.entries?[index]);
            },
            childCount: length,
          ),
          // itemCount: length,
          // itemBuilder: (context, index) {
          //   return MediaListCard(entry: widget.section?.entries?[index]);
          // },
        )
      ],
    );
  }
}

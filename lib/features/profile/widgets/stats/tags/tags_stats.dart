import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/features/profile/widgets/stats/tags/tag_card.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';

class TagsStats extends StatefulWidget {
  const TagsStats({super.key, required this.tags, required this.type});

  final List<Fragment$UserStatistics$tags?>? tags;
  final Enum$MediaType type;

  @override
  State<TagsStats> createState() => _TagsStatsState();
}

class _TagsStatsState extends State<TagsStats> {
  List<Fragment$UserStatistics$tags?>? tags;
  late String option;

  @override
  void initState() {
    tags = widget.tags;
    option = FilterConstants.genreSortOptions(widget.type)[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Show placeholder
    if (widget.tags == null) return const SizedBox();
    final list = _getSortedList();

    return SliverList.builder(
      itemCount: list.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return _buildSortOption();
        }
        return TagCard(
          tag: list[index - 1],
          index: index,
          type: widget.type,
        );
      },
    );
  }

  Widget _buildSortOption() {
    log('Rebuilding dropdown with value: $option');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Sort',
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
            fontFamily: 'Roboto-Medium',
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: CustomDropdown(
            dropdownItems: FilterConstants.genreSortOptions(widget.type),
            initialValue: option,
            onChange: (value) {
              setState(() {
                option = value;
              });
            },
          ),
        ),
      ],
    );
  }

  List<Fragment$UserStatistics$tags?> _getSortedList() {
    if (option == 'Titles Watched') {
      return widget.tags!
        ..sort(
              (a, b) => (b?.count ?? 0).compareTo(a?.count ?? 0),
        );
    } else if (option == 'Time Watched') {
      return widget.tags!
        ..sort(
              (a, b) => (b?.minutesWatched ?? 0).compareTo(a?.minutesWatched ?? 0),
        );
    } else if (option == 'Mean Score') {
      return widget.tags!
        ..sort(
              (a, b) => (b?.meanScore ?? 0).compareTo((a?.meanScore ?? 0)),
        );
    } else if (option == 'Chapters Read') {
      return widget.tags!
        ..sort(
              (a, b) => (b?.chaptersRead ?? 0).compareTo(a?.chaptersRead ?? 0),
        );
    } else {
      return widget.tags!;
    }
  }
}

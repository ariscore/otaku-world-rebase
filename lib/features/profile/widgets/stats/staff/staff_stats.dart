import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/features/profile/widgets/stats/staff/staff_card.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';

class StaffStats extends StatefulWidget {
  const StaffStats({super.key, required this.staff, required this.type});

  final List<Fragment$UserStatistics$staff?>? staff;
  final Enum$MediaType type;

  @override
  State<StaffStats> createState() => _StaffStatsState();
}

class _StaffStatsState extends State<StaffStats> {
  List<Fragment$UserStatistics$staff?>? staff;
  late String option;

  @override
  void initState() {
    staff = widget.staff;
    option = FilterConstants.genreSortOptions(widget.type)[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Show placeholder
    if (widget.staff == null) return const SizedBox();
    final list = _getSortedList();

    return SliverList.builder(
      itemCount: list.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return _buildSortOption();
        }
        return StaffCard(
          staff: list[index - 1],
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

  List<Fragment$UserStatistics$staff?> _getSortedList() {
    if (option == 'Titles Watched') {
      return widget.staff!
        ..sort(
              (a, b) => (b?.count ?? 0).compareTo(a?.count ?? 0),
        );
    } else if (option == 'Time Watched') {
      return widget.staff!
        ..sort(
              (a, b) => (b?.minutesWatched ?? 0).compareTo(a?.minutesWatched ?? 0),
        );
    } else if (option == 'Mean Score') {
      return widget.staff!
        ..sort(
              (a, b) => (b?.meanScore ?? 0).compareTo((a?.meanScore ?? 0)),
        );
    } else if (option == 'Chapters Read') {
      return widget.staff!
        ..sort(
              (a, b) => (b?.chaptersRead ?? 0).compareTo(a?.chaptersRead ?? 0),
        );
    } else {
      return widget.staff!;
    }
  }
}

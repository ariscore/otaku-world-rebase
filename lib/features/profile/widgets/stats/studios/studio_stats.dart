import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/features/profile/widgets/stats/genre/genre_card.dart';
import 'package:otaku_world/features/profile/widgets/stats/studios/studio_card.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';

class StudioStats extends StatefulWidget {
  const StudioStats({super.key, required this.studios});

  final List<Fragment$UserStatistics$studios?>? studios;

  @override
  State<StudioStats> createState() => _StudioStatsState();
}

class _StudioStatsState extends State<StudioStats> {
  List<Fragment$UserStatistics$studios?>? genres;
  late String option;

  @override
  void initState() {
    genres = widget.studios;
    option = FilterConstants.genreSortOptions(Enum$MediaType.ANIME)[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Show placeholder
    if (widget.studios == null) return const SizedBox();
    final list = _getSortedList();

    return SliverList.builder(
      itemCount: list.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return _buildSortOption();
        }
        return StudioCard(
          studio: list[index - 1],
          index: index,
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
            dropdownItems: FilterConstants.genreSortOptions(
              Enum$MediaType.ANIME,
            ),
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

  List<Fragment$UserStatistics$studios?> _getSortedList() {
    if (option == 'Titles Watched') {
      return widget.studios!
        ..sort(
          (a, b) => (b?.count ?? 0).compareTo(a?.count ?? 0),
        );
    } else if (option == 'Time Watched') {
      return widget.studios!
        ..sort(
          (a, b) => (b?.minutesWatched ?? 0).compareTo(a?.minutesWatched ?? 0),
        );
    } else if (option == 'Mean Score') {
      return widget.studios!
        ..sort(
          (a, b) => (b?.meanScore ?? 0).compareTo((a?.meanScore ?? 0)),
        );
    } else if (option == 'Chapters Read') {
      return widget.studios!
        ..sort(
          (a, b) => (b?.chaptersRead ?? 0).compareTo(a?.chaptersRead ?? 0),
        );
    } else {
      return widget.studios!;
    }
  }
}

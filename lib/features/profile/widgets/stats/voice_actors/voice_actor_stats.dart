import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/features/profile/widgets/stats/tags/tag_card.dart';
import 'package:otaku_world/features/profile/widgets/stats/voice_actors/voice_actor_card.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';

class VoiceActorStats extends StatefulWidget {
  const VoiceActorStats({super.key, required this.voiceActors});

  final List<Fragment$UserStatistics$voiceActors?>? voiceActors;

  @override
  State<VoiceActorStats> createState() => _VoiceActorStatsState();
}

class _VoiceActorStatsState extends State<VoiceActorStats> {
  List<Fragment$UserStatistics$voiceActors?>? voiceActors;
  late String sortOption, option;

  @override
  void initState() {
    voiceActors = widget.voiceActors;
    sortOption = FilterConstants.genreSortOptions(Enum$MediaType.ANIME)[0];
    option = FilterConstants.voiceActorOptions[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Show placeholder
    if (widget.voiceActors == null) return const SizedBox();
    final list = _getSortedList();

    return SliverList.builder(
      itemCount: list.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return _buildSortOption();
        }
        return VoiceActorCard(
          voiceActor: list[index - 1],
          index: index,
          option: option,
        );
      },
    );
  }

  Widget _buildSortOption() {
    log('Rebuilding dropdown with value: $sortOption');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomDropdown(
            dropdownItems: FilterConstants.voiceActorOptions,
            initialValue: option,
            onChange: (value) {
              setState(() {
                option = value;
              });
            },
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: CustomDropdown(
            dropdownItems: FilterConstants.genreSortOptions(Enum$MediaType.ANIME,),
            initialValue: sortOption,
            onChange: (value) {
              setState(() {
                sortOption = value;
              });
            },
          ),
        ),
      ],
    );
  }

  List<Fragment$UserStatistics$voiceActors?> _getSortedList() {
    if (sortOption == 'Titles Watched') {
      return widget.voiceActors!
        ..sort(
              (a, b) => (b?.count ?? 0).compareTo(a?.count ?? 0),
        );
    } else if (sortOption == 'Time Watched') {
      return widget.voiceActors!
        ..sort(
              (a, b) => (b?.minutesWatched ?? 0).compareTo(a?.minutesWatched ?? 0),
        );
    } else if (sortOption == 'Mean Score') {
      return widget.voiceActors!
        ..sort(
              (a, b) => (b?.meanScore ?? 0).compareTo((a?.meanScore ?? 0)),
        );
    } else if (sortOption == 'Chapters Read') {
      return widget.voiceActors!
        ..sort(
              (a, b) => (b?.chaptersRead ?? 0).compareTo(a?.chaptersRead ?? 0),
        );
    } else {
      return widget.voiceActors!;
    }
  }
}

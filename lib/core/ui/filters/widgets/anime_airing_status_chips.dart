import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/filter/filter_anime/filter_anime_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class AnimeAiringStatusChips extends StatelessWidget {
  const AnimeAiringStatusChips({super.key, required this.selectedStatuses});

  final animeStatuses = const [
    Enum$MediaStatus.RELEASING,
    Enum$MediaStatus.FINISHED,
    Enum$MediaStatus.NOT_YET_RELEASED,
    Enum$MediaStatus.CANCELLED,
  ];

  final List<String> selectedStatuses;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FilterAnimeBloc>();
    return CustomChips(
      title: "Airing Status",
      chipList: animeStatuses.map((s) {
        final status = FormattingUtils.getMediaStatusString(s);
        return CustomChoiceChip(
          label: status,
          value: status,
          selected: selectedStatuses.contains(status),
          onSelected: (status) {
            bloc.add(SelectAiringStatus(status));
          },
          onUnselected: (status) {
            bloc.add(UnselectAiringStatus(status));
          },
        );
      }).toList(),
    );
  }
}

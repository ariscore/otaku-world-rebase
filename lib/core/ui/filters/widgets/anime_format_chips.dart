import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/filter/filter_anime/filter_anime_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class AnimeFormatChips extends StatelessWidget {
  const AnimeFormatChips({super.key, required this.selectedFormats});

  final animeFormats = const [
    Enum$MediaFormat.TV,
    Enum$MediaFormat.TV_SHORT,
    Enum$MediaFormat.MOVIE,
    Enum$MediaFormat.SPECIAL,
    Enum$MediaFormat.OVA,
    Enum$MediaFormat.ONA,
    Enum$MediaFormat.MUSIC,
  ];

  final List<String> selectedFormats;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FilterAnimeBloc>();
    return CustomChips(
      title: 'Format',
      chipList: animeFormats.map((f) {
        final format = FormattingUtils.getMediaFormatString(f);
        return CustomChoiceChip(
          label: format,
          value: format,
          selected: selectedFormats.contains(format),
          onSelected: (format) {
            bloc.add(SelectAnimeFormat(format));
          },
          onUnselected: (format) {
            bloc.add(UnselectAnimeFormat(format));
          },
        );
      }).toList(),
    );
  }
}

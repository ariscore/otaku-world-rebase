import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/filter/filter_manga/filter_manga_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class MangaFormatChips extends StatelessWidget {
  const MangaFormatChips({super.key, required this.selectedFormats});

  final mangaFormats = const [
    Enum$MediaFormat.MANGA,
    Enum$MediaFormat.NOVEL,
    Enum$MediaFormat.ONE_SHOT,
  ];

  final List<String> selectedFormats;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FilterMangaBloc>();
    return CustomChips(
      title: 'Format',
      chipList: mangaFormats.map((f) {
        final format = FormattingUtils.getMediaFormatString(f);
        return CustomChoiceChip(
          label: format,
          value: format,
          selected: selectedFormats.contains(format),
          onSelected: (format) {
            bloc.add(SelectMangaFormat(format));
          },
          onUnselected: (format) {
            bloc.add(UnselectMangaFormat(format));
          },
        );
      }).toList(),
    );
  }
}

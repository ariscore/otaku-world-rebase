import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class SourceMaterialChips extends StatelessWidget {
  const SourceMaterialChips({
    super.key,
    required this.selectedSources,
    required this.onSelected,
    required this.onUnselected,
  });

  final List<String> selectedSources;
  final void Function(String source) onSelected;
  final void Function(String source) onUnselected;

  @override
  Widget build(BuildContext context) {
    return CustomChips(
      title: 'Source Material',
      chipList: Enum$MediaSource.values.map((s) {
        if (s == Enum$MediaSource.$unknown) return const SizedBox();
        final source = FormattingUtils.getMediaSourceString(s);
        return CustomChoiceChip(
          label: source,
          value: source,
          selected: selectedSources.contains(source),
          onSelected: onSelected,
          onUnselected: onUnselected,
        );
      }).toList(),
    );
  }
}

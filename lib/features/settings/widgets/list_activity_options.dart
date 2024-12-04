import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/filters/custom_check_box.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

class ListActivityOptions extends StatelessWidget {
  const ListActivityOptions({super.key, required this.options, required this.onChange,});

  final Fragment$Settings$options options;
  final void Function(Enum$MediaListStatus status) onChange;

  @override
  Widget build(BuildContext context) {

    log('Disabled: ${options.disabledListActivity?.map((e) => '${e?.type} -> ${e?.disabled}',).toList()}');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'List Activity Creation',
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontFamily: 'Poppins-Medium',
              ),
        ),
        const SizedBox(height: 10),
        Text(
          'Create an entry on your activity feed when your list updates.',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white.withOpacity(0.8),
              ),
        ),
        const SizedBox(height: 10),
        CustomCheckBox(
          label: 'Watching/Reading Activity',
          onChanged: () {
            onChange(Enum$MediaListStatus.CURRENT);
          },
          initialValue: !(options.disabledListActivity
                  ?.firstWhere((e) => e?.type == Enum$MediaListStatus.CURRENT)
                  ?.disabled ??
              false),
        ),
        CustomCheckBox(
          label: 'Planning to watch/read Activity',
          onChanged: () {
            onChange(Enum$MediaListStatus.PLANNING);
          },
          initialValue: !(options.disabledListActivity
              ?.firstWhere((e) => e?.type == Enum$MediaListStatus.PLANNING)
              ?.disabled ??
              false),
        ),
        CustomCheckBox(
          label: 'Completed anime/manga Activity',
          onChanged: () {
            onChange(Enum$MediaListStatus.COMPLETED);
          },
          initialValue: !(options.disabledListActivity
              ?.firstWhere((e) => e?.type == Enum$MediaListStatus.COMPLETED)
              ?.disabled ??
              false),
        ),
        CustomCheckBox(
          label: 'Dropped anime/manga Activity',
          onChanged: () {
            onChange(Enum$MediaListStatus.DROPPED);
          },
          initialValue: !(options.disabledListActivity
              ?.firstWhere((e) => e?.type == Enum$MediaListStatus.DROPPED)
              ?.disabled ??
              false),
        ),
        CustomCheckBox(
          label: 'Paused watching/reading Activity',
          onChanged: () {
            onChange(Enum$MediaListStatus.PAUSED);
          },
          initialValue: !(options.disabledListActivity
              ?.firstWhere((e) => e?.type == Enum$MediaListStatus.PAUSED)
              ?.disabled ??
              false),
        ),
        CustomCheckBox(
          label: 'Repeating watching/reading Activity',
          onChanged: () {
            onChange(Enum$MediaListStatus.REPEATING);
          },
          initialValue: !(options.disabledListActivity
              ?.firstWhere((e) => e?.type == Enum$MediaListStatus.REPEATING)
              ?.disabled ??
              false),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../theme/colors.dart';

class SwitchMedia extends StatelessWidget {
  const SwitchMedia({super.key, required this.isAnime, required this.onSwitch});

  final bool isAnime;
  final void Function(bool value) onSwitch;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            isAnime ? 'Anime' : 'Manga',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontFamily: 'Poppins',
                ),
          ),
          Switch(
            value: isAnime,
            activeTrackColor: AppColors.sunsetOrange,
            inactiveTrackColor: AppColors.japaneseIndigo,
            activeColor: AppColors.white,
            inactiveThumbColor: AppColors.white,
            onChanged: onSwitch,
          ),
        ],
      ),
    );
  }
}

class SwitchMediaDropdown extends StatelessWidget {
  const SwitchMediaDropdown({super.key, required this.initialValue, required this.onChanged,});

  final Enum$MediaType initialValue;
  final void Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: CustomDropdown(
        dropdownItems: const ['Anime', 'Manga'],
        initialValue: initialValue.displayTitle(),
        onChange: onChanged,
      ),
    );
  }
}

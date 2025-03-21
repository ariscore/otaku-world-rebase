import 'package:flutter/material.dart';

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

import 'package:flutter/material.dart';

import '../../../../../theme/colors.dart';

class StatsTitle extends StatelessWidget {
  const StatsTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: AppColors.white,
        fontSize: 20,
        fontFamily: 'Roboto Condensed',
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

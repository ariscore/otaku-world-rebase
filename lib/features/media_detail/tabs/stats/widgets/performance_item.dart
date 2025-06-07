import 'package:flutter/material.dart';

import '../../../../../theme/colors.dart';
import '../../../widgets/info_data.dart';

class PerformanceItem extends StatelessWidget {
  const PerformanceItem({
    super.key,
    required this.iconString,
    required this.data,
    required this.category,
  });

  final String iconString;
  final String data;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InfoData(
          iconName: iconString,
          separateWidth: 3,
          info: data,
        ),
        Text(
          category,
          style: TextStyle(
              color: AppColors.white.withValues(alpha:0.6),
              fontSize: 12,
              fontFamily: 'Roboto Condensed',
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}

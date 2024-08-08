import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../theme/colors.dart';

class InfoData extends StatelessWidget {
  const InfoData({
    super.key,
    required this.iconName,
    required this.separateWidth,
    required this.info,
  });

  final String iconName;
  final double separateWidth;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          iconName,
          height: 16,
          width: 16,
        ),
        SizedBox(
          width: separateWidth,
        ),
        Text(
          info,
          style: const TextStyle(
            fontFamily: 'Roboto Condensed',
            fontSize: 16,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}

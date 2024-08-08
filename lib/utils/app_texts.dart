import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';

class AppTextStyles {
  static const TextStyle titleSectionStyle = TextStyle(
    color: AppColors.white,
    fontFamily: 'Roboto Condensed',
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle infoDataStyle = TextStyle(
    color: AppColors.white,
    fontFamily: 'Roboto',
    fontSize: 12,
  );

  static final TextStyle infoTitleDataStyle = TextStyle(
    color: AppColors.white.withOpacity(0.8),
    fontFamily: 'Roboto',
    fontSize: 12,
  );
}

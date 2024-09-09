import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';

class Decorations {
  static final ShapeDecoration simpleContainer = ShapeDecoration(
    gradient: const LinearGradient(
      begin: Alignment(0.00, -1.00),
      end: Alignment(0, 1),
      colors: [
        AppColors.japaneseIndigo,
        AppColors.darkCharcoal,
      ],
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    shadows: const [
      BoxShadow(
        color: AppColors.blackShadow,
        blurRadius: 4,
        offset: Offset(0, 4),
        spreadRadius: 0,
      )
    ],
  );
}

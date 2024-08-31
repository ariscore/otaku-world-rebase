import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';

class Decorations {
  static final ShapeDecoration simpleContainer = ShapeDecoration(
    color: AppColors.japaneseIndigo,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    shadows: const [
      BoxShadow(
        color: AppColors.blackShadow,
        blurRadius: 4,
        offset: Offset(0, 4),
      )
    ],
  );
}

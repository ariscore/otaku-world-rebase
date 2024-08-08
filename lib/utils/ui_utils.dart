import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/dimensions_constants.dart';
import '../core/ui/buttons/primary_outlined_button.dart';
import '../theme/colors.dart';

class UIUtils {
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 1)),
    );
  }

  static void showProgressDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
  }

  static double getWidgetWidth({
    required double targetWidgetWidth,
    required double screenWidth,
  }) {
    double widthScaleFactor =
        targetWidgetWidth / DimensionsConstants.designedScreenWidth;

    return screenWidth * widthScaleFactor;
  }

  static double getWidgetHeight({
    required double targetWidgetHeight,
    required double screenHeight,
  }) {
    double heightScaleFactor =
        targetWidgetHeight / DimensionsConstants.designedScreenHeight;

    return screenHeight * heightScaleFactor;
  }

  static Color hexToColor(String hexColor) {
    return Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static void showInfoDialog(BuildContext context, String title, String description) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Text(
            description,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          backgroundColor: AppColors.japaneseIndigo,
          actions: [
            PrimaryOutlinedButton(
              onTap: context.pop,
              label: 'Ok',
              horizontalPadding: 5,
              verticalPadding: 10,
              fontSize: 14,
            ),
          ],
        );
      },
    );
  }
}


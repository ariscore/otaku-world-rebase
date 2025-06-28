import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/core/ui/markdown/markdown.dart';
import 'package:otaku_world/core/ui/markdown_v2/markdown.dart';

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

  static void hideProgressDialog(BuildContext context) {
    context.pop();
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

  static void showInfoDialog(
    BuildContext context,
    String title,
    String description,
  ) {
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

  static void showMarkdownDialog(BuildContext context, {required String data}) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(10),
          shape: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          backgroundColor: AppColors.transparent,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: AppColors.secondaryGradient,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 10,
              children: [
                // MarkdownWidget(data: data),
                MyMarkdownWidgetV2(data: data),
                PrimaryOutlinedButton(
                  onTap: context.pop,
                  label: 'Ok',
                  horizontalPadding: 5,
                  verticalPadding: 10,
                  fontSize: 14,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static ShapeDecoration getContainerDecoration() {
    return ShapeDecoration(
      gradient: const LinearGradient(
        begin: Alignment(0.00, -1.00),
        end: Alignment(0, 1),
        colors: [AppColors.japaneseIndigo, AppColors.blackOlive],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadows: const [
        BoxShadow(
          color: Color(0x3F000000),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
      ],
    );
  }

  static BoxDecoration getDetailScreenDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          AppColors.japaneseIndigo,
          AppColors.raisinBlack,
        ],
      ),
    );
  }

  static BoxDecoration getShimmerDetailScreenDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          AppColors.graniteGray,
          AppColors.raisinBlack,
        ],
      ),
    );
  }
}

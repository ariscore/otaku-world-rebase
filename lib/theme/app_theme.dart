import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/theme/texts.dart';

class AppTheme {
  static ThemeData getTheme() {
    return ThemeData(
      primaryColor: AppColors.sunsetOrange,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.sunsetOrange),
      scaffoldBackgroundColor: AppColors.raisinBlack,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.chineseBlack,
        elevation: 0,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12,
        ),
        selectedItemColor: AppColors.sunsetOrange,
        unselectedItemColor: AppColors.white,
      ),
      // useMaterial3: true,
      textTheme: const TextTheme(
        displayLarge: AppTexts.displayLarge,
        displayMedium: AppTexts.displayMedium,
        displaySmall: AppTexts.displaySmall,
        headlineMedium: AppTexts.headlineMedium,
        headlineSmall: AppTexts.headlineSmall,
        titleLarge: AppTexts.titleLarge,
        titleMedium: AppTexts.titleMedium,
        bodySmall: AppTexts.bodySmall,
      ),
    );
  }
}
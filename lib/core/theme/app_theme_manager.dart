import 'package:flutter/material.dart';
import 'package:space/core/theme/app_colors.dart';

class AppThemeManager {
  static ThemeData getThemeData () =>ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    primaryColor: AppColors.primary,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w900
      ),

      titleLarge: TextStyle(
        fontSize: 20,
        color: AppColors.white,
        fontWeight: FontWeight.w600,
      ),

      headlineSmall: TextStyle(
        fontFamily: "SpaceGrotesk",
        fontWeight: FontWeight.w700,
        color: AppColors.white
      ),

      titleMedium: TextStyle(
        fontFamily: "SpaceGrotesk",
        fontWeight: FontWeight.w400,
        color: AppColors.white
      )
    )
  );
}
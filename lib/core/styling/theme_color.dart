import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_fonts.dart';
import 'package:finance/core/styling/app_styling.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor:AppColors.whitecolor,
    fontFamily: AppFonts.mainFontsName,
    textTheme:  TextTheme(
      titleLarge: AppStyling.primaryHeadLineStyle,
      titleMedium: AppStyling.subTitle,
    ),
      buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
    disabledColor: AppColors.secondeyColor,
  ),

  );
}


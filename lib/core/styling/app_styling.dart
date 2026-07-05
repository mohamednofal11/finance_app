import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AppStyling {
  static TextStyle primaryHeadLineStyle = TextStyle(
    fontFamily: AppFonts.mainFontsName,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static  TextStyle subTitle = TextStyle(
    fontFamily: AppFonts.mainFontsName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.secondeyColor,
  );
  static TextStyle black16w500 = TextStyle(
    fontFamily: AppFonts.mainFontsName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.blackcolor,
  );
  static TextStyle greycolorwMF = TextStyle(
    fontFamily: AppFonts.mainFontsName,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.greycolor,
  );
  static TextStyle black15boldstyle= TextStyle(
    fontFamily: AppFonts.mainFontsName,
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.blackcolor,

  );
}
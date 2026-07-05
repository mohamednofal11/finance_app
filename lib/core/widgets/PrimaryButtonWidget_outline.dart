import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:finance/core/styling/app_colors.dart';

class PrimaryButtonWidgetOutline extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor; // سيتم استخدامه كلون للإطار (Border)
  final double? width;
  final double? height;
  final double? bordersRadius;
  final Color? textColor;
  final double? fontSize;
  final void Function()? onPress;

  const PrimaryButtonWidgetOutline({
    super.key,
    this.buttonText,
    this.buttonColor,
    this.width,
    this.height,
    this.bordersRadius,
    this.textColor,
    this.onPress,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,

        side: BorderSide(
          color: buttonColor ?? AppColors.primaryColor,
          width: 1.5,
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRadius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),
      child: Text(
        buttonText ?? " ",
        style: TextStyle(
          // جعل لون الخط الافتراضي هو الـ Primary Color
          color: textColor ?? AppColors.primaryColor,
          fontSize: fontSize ?? 16.sp, // تم إضافة حجم الخط
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
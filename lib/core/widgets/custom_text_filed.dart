import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:finance/core/styling/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final IconData? prefixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final String ?  Function(String?) ? validator;

  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.suffixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator ,
      controller:controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 14.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.greycolor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.greycolor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 1.5),
        ),
      ),
    );
  }
}
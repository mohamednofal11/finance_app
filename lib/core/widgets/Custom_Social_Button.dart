import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
class CustomSocialButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;
  const CustomSocialButton({
    super.key,
    required this.iconPath,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius:BorderRadius.circular(12.r),
      child: Container(
        width: 105.w,
        height: 65.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: const Color(0xffE8ECF4),
            width: 1.w,
          ),
      ),
        child: Center(
          child: SvgPicture.asset(
            iconPath,
            width: 24.w,
            height: 24.h,
          ),
        ),
      ),
    );
  }
}

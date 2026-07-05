import 'package:finance/core/images/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../core/images/iamges.dart';
class PasswordChangeScreen extends StatelessWidget {
  const PasswordChangeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(248.h),
              SvgPicture.asset(
                AppImages.success,
                width: 100.w,
                height: 100.h,
                fit: BoxFit.contain,
              ),
              Gap(24.h),
              Text(
                'Password Changed!',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF536DFE),
                ),
                textAlign: TextAlign.center,
              ),
              Gap(12.h),
              Text(
                'Your password has been changed\nsuccessfully.',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              Gap(40.h),
              SizedBox(
                width: double.infinity,
                height: 54.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, ModalRoute.withName('/login'));

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6374FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Back to Login',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
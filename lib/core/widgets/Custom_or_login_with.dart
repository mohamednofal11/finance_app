import 'package:finance/core/styling/app_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomOrLoginWith extends StatelessWidget {
  const CustomOrLoginWith({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: const Divider(),
            ),
            Gap(12.w),
            Text(
              " Or Login With",
              style: AppStyling.black15boldstyle.copyWith(
                fontSize: 16.sp,
              ),
            ),
            Gap(12.w),
            Expanded(
              child: const Divider(),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomOrRegisterWith extends StatelessWidget {
  const CustomOrRegisterWith({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: const Divider(),
            ),
            Gap(12.w),
            Text(
              " Or Register With",
              style: AppStyling.black15boldstyle.copyWith(
                fontSize: 16.sp,
              ),
            ),
            Gap(12.w),
            Expanded(
              child: const Divider(),
            ),
          ],
        ),
      ],
    );
  }
}
import 'package:finance/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 41.w,
        height: 41.h,
        decoration: BoxDecoration
          (
            borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: Color(0xffE8ECF4),
            width: 1.w,
          ),
          ),
        child: Center(
          child: InkWell(
            onTap:() {
              GoRouter.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios_new,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:finance/core/Routing/app_routes.dart';
import 'package:finance/core/images/iamges.dart';
import 'package:finance/core/widgets/PrimaryButtonWidget_outline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import '../core/widgets/primary_button_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppImages.onBoarging,
            width: double.infinity,
            height: 520.h,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  PrimaryButtonWidget(
                    width: 331.w,
                    height: 56.h,
                    buttonText: "Login",
                    onPress: () {
                      GoRouter.of(context).push(AppRoutes.mainscreen);
                    },
                  ),
                  SizedBox(height: 15.h),
                  PrimaryButtonWidgetOutline(
                    width: 331.w,
                    height: 56.h,
                    buttonText: "Register",
                    onPress: () {
                      GoRouter.of(context).push(AppRoutes.regiseterScreen);
                    },
                  ),
                  SizedBox(height: 50.h),
                  Text(
                    "Continue as a guest",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Urbanist",
                      decoration: TextDecoration.underline,
                    ),
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:finance/core/Routing/app_routes.dart';
import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../core/styling/app_styling.dart';
import '../core/widgets/back_button_widget.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late TextEditingController pincodetextieldController;
  final formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    pincodetextieldController = TextEditingController();
  }

  @override
  void dispose() {
    pincodetextieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.r),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Gap(12),
                  const BackButtonWidget(),
                  const Gap(28),
                  SizedBox(
                    width: 280.w,
                    height: 78.h,
                    child: Text(
                      'OTP Verification',
                      style: AppStyling.primaryHeadLineStyle,
                    ),
                  ),
                  Gap(10),
                  SizedBox(
                    width: 280.w,
                    height: 78.h,
                    child: Text(
                      'Enter the verification code we just sent on your email address.',
                      style: AppStyling.subTitle,
                    ),
                  ),
                  Gap(30),
                  PinCodeTextField(
                    controller: pincodetextieldController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter verify code';
                      }
                      if (value.length < 4) {
                        return 'code must be 4 digits';
                      }
                      return null;
                    },
                    appContext: context,
                    length: 4,
                    obscureText: false,
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    textStyle: AppStyling.primaryHeadLineStyle.copyWith(fontSize: 22.sp),
                    pinTheme: PinTheme(
                      fieldWidth: 70,
                      fieldHeight: 60,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8.r),
                      selectedColor: AppColors.primaryColor,
                      selectedFillColor: AppColors.whitecolor,
                      activeColor: AppColors.blackcolor,
                      activeFillColor: AppColors.whitecolor,
                      inactiveColor: AppColors.greycolor,
                      inactiveFillColor: AppColors.greycolor.withOpacity(0.2),
                    ),
                  ),
                  Gap(38),
                  PrimaryButtonWidget(
                    buttonText: "Verify",
                    onPress: () {


                      if (formkey.currentState!.validate()) {
                        GoRouter.of(context).push(AppRoutes.createnewpassword);
                      }
                    },
                  ),
                  Gap(330),
                  RichText(
                    text: TextSpan(
                      text: "  Didn’t received code? ",
                      style: AppStyling.black16w500.copyWith(color: AppColors.primaryColor),
                      children: [
                        TextSpan(
                          text: "Resend ",
                          style: AppStyling.black16w500,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
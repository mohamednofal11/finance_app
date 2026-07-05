import 'package:finance/core/Routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../core/styling/app_colors.dart';
import '../core/styling/app_styling.dart';
import '../core/widgets/back_button_widget.dart';
import '../core/widgets/custom_text_filed.dart';
import '../core/widgets/primary_button_widget.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  late TextEditingController enteryouremailController;
  final formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    enteryouremailController = TextEditingController();
  }

  // 💡 متنساش تعمل dispose للـ Controller عشان متستهلكش ذاكرة الموبايل (Memory Leak)
  @override
  void dispose() {
    enteryouremailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.r),
          child: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(12),
                  const BackButtonWidget(),
                  const Gap(28),
                  SizedBox(
                    width: 300.w,
                    height: 78.h,
                    child:Text('Forgot Password?',
                      style:AppStyling.primaryHeadLineStyle,
                    ),
                  ),
                  Gap(10),
                  SizedBox(
                    width: 331.w,
                    height: 78.h,
                    child:Text('Dont worry! It occurs. Please enter the email address linked with your account.',
                      style:AppStyling.black16w500,
                    ),
                  ),
                  Gap(35),
                  CustomTextField(
                    controller: enteryouremailController,
                    validator: (value)
                    {
                      if (value == null || value.isEmpty){
                        return 'please enter username ' ;
                      }
                      return null;
                    },
                    hintText: "Enter Your email",
                  ),
                  Gap(38),
                  PrimaryButtonWidget(
                    buttonText: "Send Code",
                    onPress: (){

                      if(formkey.currentState!.validate()){
                        GoRouter.of(context).push(AppRoutes.otpScreen);
                      }
                    },
                  ),
                  Gap(360),
                  RichText
                    (text: TextSpan(text:
                  "Remember Password ?",
                    style: AppStyling.black16w500.copyWith(color:AppColors.primaryColor),
                    children: [
                      TextSpan(text: " Login",
                          style: AppStyling.black16w500
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
import 'package:finance/core/Routing/app_routes.dart';
import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_styling.dart';
import 'package:finance/core/widgets/Custom_or_login_with.dart';
import 'package:finance/core/widgets/back_button_widget.dart';
import 'package:finance/core/widgets/custom_text_filed.dart';
import 'package:finance/core/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/widgets/Custom_Social_Button.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController ;
  late TextEditingController passwordController;
  final formkey = GlobalKey<FormState>();
  @override
  void initState(){
    super.initState();
    emailController =TextEditingController();
    passwordController =TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:Scaffold(
        body: Padding(
          padding:EdgeInsets.symmetric(horizontal: 22.r),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Gap(12),
               BackButtonWidget(),
                Gap(28),
                SizedBox(
                  width: 280.w,
                  height: 78.h,
                    child:Text('Welcome back! Again!',
                    style:AppStyling.primaryHeadLineStyle,
                    ),
                ),
                Gap(32),
                CustomTextField(
                  controller: emailController,
                  validator: (value)
                  {
                    if (value == null || value.isEmpty){
                      return 'please enter your email' ;
                    }
                    return null;
                  },
                  hintText: "Enter Your Email",
                ),
                Gap(15),
                CustomTextField(
                  controller:passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length<8){
                      return 'please your password with at least 8 characters';
                    }
                    return null;
                  },
                  hintText: "Enter Your Password",
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    size: 20.sp,
                    color: AppColors.greycolor,
                  ),
                ),
                Gap(15),
                Align(
                  alignment:Alignment.centerRight,
                  child: TextButton(
                    onPressed: (){
                      GoRouter.of(context).push(AppRoutes.forgetPassword);
                    },
                    child: Text("Forget Password?",
                    style:
                    AppStyling.black15boldstyle.copyWith(color:Color(0xff6A707C),
                      decoration: TextDecoration.underline,
                    ),
                    ),
                  ),
                ),
                Gap(30),
                PrimaryButtonWidget(
                  buttonText: "Login",
                  onPress: (){
                    if(formkey.currentState!.validate()){

                    }

                    GoRouter.of(context).push(AppRoutes.otpScreen);

                  },
                ),
                Gap(15),
              CustomOrLoginWith(),
                Gap(22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomSocialButton(
                      iconPath: 'assets/Icons/facebook.svg.svg',
                      onTap: () {},
                    ),
                    CustomSocialButton(
                      iconPath: 'assets/Icons/google.svg.svg',
                      onTap: () {},
                    ),
                    CustomSocialButton(
                      iconPath: 'assets/Icons/apple.svg.svg',
                      onTap: () {},
                    ),
                  ],
                ),
                Gap(155),
                RichText
                  (text: TextSpan(text:
                "Don’t have an account?",
                  style: AppStyling.black16w500.copyWith(color:AppColors.primaryColor),
                  children: [
                    TextSpan(text: " Register Now",
                      style: AppStyling.black16w500
                    ),
                  ],
                 ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

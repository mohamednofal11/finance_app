import 'package:finance/core/Routing/app_routes.dart';
import 'package:finance/core/styling/app_styling.dart';
import 'package:finance/core/widgets/custom_text_filed.dart';
import 'package:finance/core/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../core/styling/app_colors.dart';
import '../core/widgets/Custom_Social_Button.dart';
import '../core/widgets/Custom_or_login_with.dart';
import '../core/widgets/back_button_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();

}
class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmController;
  final formkey = GlobalKey <FormState> ();
  @override
  void initState(){
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmController = TextEditingController();

  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: Padding(padding:
          EdgeInsets.symmetric(horizontal: 22.r),
            child: Form(
              key: formkey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Gap(12),
                    BackButtonWidget(),
                    Gap(28),
                    SizedBox(
                      width: 331.w,
                      child: Text("Hello! Register to get started",
                        style: AppStyling.primaryHeadLineStyle,
                      ),
                    ),
                    Gap(28),
                    CustomTextField(
                      controller: usernameController,
                      validator: (value) {
                        if (value ==  null || value.isEmpty  ){
                          return 'please enter email';
                        }
                        return null;
                      },
                      hintText: "user name",
                    ),
                    Gap(15),
                    CustomTextField(
                      controller: emailController,
                      validator: (value) {
                        if (value ==  null || value.isEmpty  ){
                          return 'please enter email';
                        }
                        return null;
                      },
                
                      hintText: "Email",
                    ),
                    Gap(15),
                    CustomTextField(
                      controller: passwordController,
                      validator: (value) {
                        if (value ==  null || value.isEmpty || value.length<8 ){
                          return 'please enter password ';
                        }
                        return null;
                      },
                      hintText: "Password",
                    ),
                    Gap(15),
                    CustomTextField(
                      controller: confirmController,
                      validator: (value) {
                        if (value ==  null || value.isEmpty || value.length<8 ){
                          return 'please confirm';
                        }
                        return null;
                      },
                      hintText: "Confirm",
                    ),
                    Gap(30),
                    PrimaryButtonWidget(
                      buttonText: "Register",
                      onPress: (){
                        GoRouter.of(context).push(AppRoutes.forgetPassword);
                       if (formkey.currentState!.validate()){
                       }
                      },
                    ),
                    Gap(30),
                    CustomOrRegisterWith(),
                    Gap(35),
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
                    Gap(54),
                    RichText
                      (text: TextSpan(text:
                    "Already have an account?",
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
        ),
        ),
    );
  }
}

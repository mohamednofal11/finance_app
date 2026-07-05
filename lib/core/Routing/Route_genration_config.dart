import 'package:finance/core/Routing/app_routes.dart';
import 'package:finance/features/Create_new_password.dart';
import 'package:finance/features/Login_Screen.dart';
import 'package:finance/features/Main_Screen.dart';
import 'package:finance/features/OTP_Screen.dart';
import 'package:finance/features/Password_Change_Screen.dart';
import 'package:finance/features/Register_Screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/Forget_Screen.dart';
import '../../features/on_boarding_screen.dart';
import 'app_routes.dart';

class RouteGenrationConfig
{
  static GoRouter  goRouter =


    GoRouter(initialLocation: AppRoutes.onBoarding,
        routes: [
          GoRoute(
            path: AppRoutes.onBoarding,
            builder: (context,state) => const OnBoardingScreen() ,


          ),
          GoRoute(
              path: AppRoutes.loginScreen,
            name: AppRoutes.loginScreen,
            builder: (context ,state) => const LoginScreen(),
          ),
          GoRoute(
            path: AppRoutes.regiseterScreen,
            name: AppRoutes.regiseterScreen,
            builder: (context ,state) => const RegisterScreen(),
          ),
          GoRoute(
            path: AppRoutes.forgetPassword,
            name: AppRoutes.forgetPassword,
            builder: (context ,state) => const ForgetScreen() ,
          ),
          GoRoute(
            path: AppRoutes.otpScreen,
            name: AppRoutes.otpScreen,
            builder: (context ,state) => const OtpScreen() ,
          ),
          GoRoute(
            path: AppRoutes.createnewpassword,
            name: AppRoutes.createnewpassword,
            builder: (context ,state) => const CreateNewPassword(),
          ),
          GoRoute(
            path: AppRoutes.passwordchange,
            name: AppRoutes.passwordchange,
            builder: (context ,state) => const PasswordChangeScreen(),
          ),
          GoRoute(
            path: AppRoutes.mainscreen,
            name: AppRoutes.mainscreen,
            builder: (context ,state) => const MainScreen(),
          ),




        ]
    );


}

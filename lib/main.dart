import 'package:finance/core/Routing/Route_genration_config.dart';
import 'package:finance/core/styling/theme_color.dart';
import 'package:finance/core/widgets/custom_text_filed.dart';
import 'package:finance/core/widgets/primary_button_widget.dart';
import 'package:finance/features/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: RouteGenrationConfig.goRouter ,
        );
      },
      child: const OnBoardingScreen(),
    );
  }
}

import 'package:finance/core/images/iamges.dart';
import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../core/Features/Top_Profile_Notification_Widget.dart';
import '../core/widgets/Custom_Carousel_Widget.dart';
import '../core/widgets/Custom_Home_Page_Icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Gap(18),
              TopProfileNotificationWidget(),
              Gap(18),
              CustomCarouselWidget(),
              Expanded(
                child: GridView(
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    mainAxisSpacing: 8.sp,
                    crossAxisSpacing: 16.sp,
                  ),
                  children: [
                    CustomHomePageIcon(
                      title: "Send Money",
                      description: "Take acc to acc",
                      iconData: Icons.send,
                    ),
                    CustomHomePageIcon(
                      title: "Pay the bill",
                      description: "Take acc to acc",
                      iconData: Icons.wallet_outlined,
                    ),
                    CustomHomePageIcon(
                      title: "Request",
                      description: "Take acc to acc",
                      iconData: Icons.request_page,
                    ),
                    CustomHomePageIcon(
                      title: "Contact",
                      description: "Take acc to acc",
                      iconData: Icons.contacts_rounded,
                    ),

                  ],

                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
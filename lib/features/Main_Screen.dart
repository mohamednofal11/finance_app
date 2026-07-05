import 'dart:developer';

import 'package:finance/core/Buttom_Icon/All_Cards_Screen.dart';
import 'package:finance/features/Home_Screen.dart';
import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_styling.dart';
import 'package:finance/core/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../core/Buttom_Icon/Profile.dart';
import '../core/Buttom_Icon/statistic_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const  StatisticScreen(),
    const Text('add page'),
    const AllCardsScreen(),
    const Profile(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        child: Container(
          width: 24.w,
          height: 24.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Icon(
            Icons.add,
            color: AppColors.primaryColor,
            size: 18.sp,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greycolor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/Icons/Home.svg',
              width: 24.w,
              height: 24.h,
              colorFilter: ColorFilter.mode(AppColors.greycolor, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/Icons/Home.svg',
              width: 24.w,
              height: 24.h,
              colorFilter: ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/Icons/Chart.svg',
              width: 24.w,
              height: 24.h,
              colorFilter: ColorFilter.mode(AppColors.greycolor, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/Icons/Chart.svg',
              width: 24.w,
              height: 24.h,
              colorFilter: ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
            ),
            label: "Statistic",
          ),
          const BottomNavigationBarItem(
            icon: SizedBox(height: 24, width: 24),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/Icons/Wallet.svg',
              width: 24.w,
              height: 24.h,
              colorFilter: ColorFilter.mode(AppColors.greycolor, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/Icons/Wallet.svg',
              width: 24.w,
              height: 24.h,
              colorFilter: ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
            ),
            label: "My card",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/Icons/Profile.svg',
              width: 24.w,
              height: 24.h,
              colorFilter: ColorFilter.mode(AppColors.greycolor, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/Icons/Profile.svg',
              width: 24.w,
              height: 24.h,
              colorFilter: ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
            ),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../images/iamges.dart';
import '../styling/app_styling.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap(10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 44.w,
                    height: 44.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xffE3E9ED),
                        width: 1.w,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: SvgPicture.asset('assets/Icons/arrow-ios-back.svg'),
                    ),
                  ),
                  Text(
                    "My Profile",
                    style: AppStyling.black16w500.copyWith(fontSize: 22.sp),
                  ),
                  Container(
                    width: 44.w,
                    height: 44.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xffE3E9ED),
                        width: 1.w,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: SvgPicture.asset('assets/Icons/Edit.svg'),
                    ),
                  ),
                ],
              ),
              Gap(39.h),
              Container(
                width: 100.w,
                height: 100.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xffE3E9ED),
                    width: 2.w,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.w),
                  child: SvgPicture.asset(
                    AppImages.myphoto,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(16.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Full Name",
                  style: AppStyling.subTitle
                  ),
                ),
              Gap(8),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Mohamed Nofal",
                    style: AppStyling.black15boldstyle.copyWith(fontSize: 18.sp),
                ),
              ),
              Gap(15),
              SvgPicture.asset('assets/Icons/Line.svg'),
              Gap(15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Email",
                    style: AppStyling.subTitle
                ),
              ),
              Gap(8),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "mohamednofal450@gmail.com",
                  style: AppStyling.black15boldstyle.copyWith(fontSize: 18.sp),
                ),
              ),
              Gap(15),
              SvgPicture.asset('assets/Icons/Line.svg'),
              Gap(15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Phone Number",
                    style: AppStyling.subTitle
                ),
              ),
              Gap(8),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "01211053075",
                  style: AppStyling.black15boldstyle.copyWith(fontSize: 18.sp),
                ),
              ),
              Gap(15),
              SvgPicture.asset('assets/Icons/Line.svg'),
              Gap(15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Address",
                    style: AppStyling.subTitle
                ),
              ),
              Gap(8),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sadat City",
                  style: AppStyling.black15boldstyle.copyWith(fontSize: 18.sp),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
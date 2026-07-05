import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../styling/app_styling.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(10.h),
              SizedBox(
                width: double.infinity,
                child: Row(
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
                      "Reload",
                      style: AppStyling.black15boldstyle.copyWith(fontSize: 18.sp),
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
                        child: SvgPicture.asset('assets/Icons/more (5) 1.svg'),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(25.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Jan 28 - May 28, 2025",
                    style: AppStyling.subTitle.copyWith(fontSize: 14.sp),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      color: const Color(0xFFADC0FF),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Monthly",
                          style: TextStyle(
                            color: const Color(0xFF2B3666),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(4.w),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 18.w,
                          color: const Color(0xFF2B3666),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(25.h),
              Container(
                width: double.infinity,
                height: 200.h,
                padding: EdgeInsets.all(8.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("8k", style: TextStyle(color: Colors.grey, fontSize: 11.sp)),
                        Text("6k", style: TextStyle(color: Colors.grey, fontSize: 11.sp)),
                        Text("4k", style: TextStyle(color: Colors.grey, fontSize: 11.sp)),
                        Text("2k", style: TextStyle(color: Colors.grey, fontSize: 11.sp)),
                        Text("0", style: TextStyle(color: Colors.grey, fontSize: 11.sp)),
                      ],
                    ),
                    Gap(10.w),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _buildBarGroup("Jan", 140.h, 100.h),
                          _buildBarGroup("Feb", 140.h, 100.h),
                          _buildBarGroup("Mar", 140.h, 100.h),
                          _buildBarGroup("Apr", 140.h, 100.h),
                          _buildBarGroup("May", 140.h, 100.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap(30.h),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: const Color(0xFFEAEAEA)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.w,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Icon(
                              Icons.arrow_downward,
                              color: const Color(0xFF567DF4),
                              size: 20.w,
                            ),
                          ),
                          Gap(16.h),
                          Text(
                            "15000 EG",
                            style: AppStyling.black15boldstyle.copyWith(fontSize: 16.sp),
                          ),
                          Gap(4.h),
                          Text(
                            "Income",
                            style: AppStyling.subTitle.copyWith(fontSize: 13.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(16.w),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: const Color(0xFFEAEAEA)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.w,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Icon(
                              Icons.arrow_upward,
                              color: const Color(0xFF567DF4),
                              size: 20.w,
                            ),
                          ),
                          Gap(16.h),
                          Text(
                            "35000 EG",
                            style: AppStyling.black15boldstyle.copyWith(fontSize: 16.sp),
                          ),
                          Gap(4.h),
                          Text(
                            "Outcome",
                            style: AppStyling.subTitle.copyWith(fontSize: 13.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBarGroup(String month, double height1, double height2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 12.w,
              height: height1,
              decoration: BoxDecoration(
                color: const Color(0xFF567DF4),
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
            Gap(4.w),
            Container(
              width: 12.w,
              height: height2,
              decoration: BoxDecoration(
                color: const Color(0xFF2B3666),
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
          ],
        ),
        Gap(8.h),
        Text(
          month,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 11.sp,
          ),
        ),
      ],
    );
  }
}
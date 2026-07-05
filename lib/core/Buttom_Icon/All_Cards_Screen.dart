import 'package:finance/core/styling/app_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import '../widgets/Card_Item_Widget.dart';

class AllCardsScreen extends StatelessWidget {
  const AllCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Gap(10.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  Container(
                    width: 44.w,
                    height: 44.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.05)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: SvgPicture.asset('assets/Icons/arrow-ios-back.svg'),
                    ),
                  ),
                  Text("My Cards",
                      style:
                      AppStyling.black16w500.copyWith(fontSize: 25.sp)
                  ),

                  Container(
                    width: 44.w,
                    height: 44.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.05)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: SvgPicture.asset('assets/Icons/more (5) 1.svg'),
                    ),
                  ),
                ],
              ),
              Gap(30.h),
              CardItemWidget(
                cardName: "Mohamed Nofal",
                balance: "23400 EG",
                cardNumber: "****  3434",
                expiryDate: "12/24",
                gradientColors: const [
                  Color(0xFF567DF4),
                  Color(0xFF635BFF),
                ],
                width: double.infinity,
                height: 190.h,
              ),

              Gap(20.h),
              CardItemWidget(
                cardName: "Mohamed Nofal",
                balance: "3209 EG",
                cardNumber: "****  4545",
                expiryDate: "12/30",
                gradientColors: const [
                  Color(0xFF3B4E99),
                  Color(0xFF2B3666),
                ],
                width: double.infinity,
                height: 190.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
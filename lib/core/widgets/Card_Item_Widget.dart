import 'package:finance/core/images/iamges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CardItemWidget extends StatelessWidget {

  final String cardName;
  final String balance;
  final String cardNumber;
  final String expiryDate;
  final List<Color> gradientColors;
  final double width;
  final double height;

  const CardItemWidget({
    super.key,
    required this.cardName,
    required this.balance,
    required this.cardNumber,
    required this.expiryDate,
    required this.gradientColors,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(

        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.r),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset(
                AppImages.big,
                width: 120.w,
                height: 130.h,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset(
                AppImages.small,
                width: 207.w,
                height: 200.h,
                fit: BoxFit.fill,
              ),
            ),


            Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    cardName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Balance',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 6.h),

                      Text(
                        balance,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        cardNumber,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),

                      Text(
                        expiryDate,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
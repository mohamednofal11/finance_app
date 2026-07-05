import 'package:finance/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../styling/app_colors.dart';
import '../styling/app_styling.dart';

class TopProfileNotificationWidget extends StatelessWidget {
  const TopProfileNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: SvgPicture.asset(
                'assets/Icons/my photo.svg',
                width: 60.w,
                height: 60.h,
                fit: BoxFit.fill,
              ),
            ),
            const Gap(11),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back",
                  style: AppStyling.greycolorwMF.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: const Color(0xff9CA4AB),
                  ),
                ),
                const Gap(2),
                Text(
                  "Mohamed Nofal",
                  style: AppStyling.black15boldstyle.copyWith(
                    fontSize: 25.sp,
                    color: const Color(0xff1D2A38),
                  ),
                ),

              ],
            ),
          ],
        ),
        Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
           border:Border.all(color: const Color(0xffE3E9ED),width: 1.w),
              color: Colors.white,
              shape: BoxShape.circle

          ),
          child:  Icon(
            Icons.notifications,
            weight: 17.w,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}

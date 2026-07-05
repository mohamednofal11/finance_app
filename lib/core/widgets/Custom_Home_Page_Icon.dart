import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';
class CustomHomePageIcon extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String description;
  // final ImageIcon imageIcon;

  const CustomHomePageIcon({
    super.key,
    required this.iconData,
    required this.title,
    required this.description,
    // required this.imageIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        border: Border.all(color:Color(0xffE3E9ED),width:1,),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child:Column(
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffECF1F6),
                borderRadius: BorderRadius.circular(16.r),

              ),
              child: Icon(
                iconData,
                size: 20.sp,
                color: AppColors.primaryColor,
              ),
            ),
            Gap(12),
            Text(title,
              style:AppStyling.black15boldstyle ,
            ),
            Gap(8),
            Text(description,style: AppStyling.greycolorwMF,),
            
          ],

        ) ,

      ),
    );
  }
}

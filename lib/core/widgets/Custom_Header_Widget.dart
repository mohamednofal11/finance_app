import 'package:finance/core/images/iamges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CustomHeaderWidget extends StatelessWidget {
  const CustomHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFF1E88E5),
                  width: 2.w,
                ),
                image: DecorationImage(
                  image: AssetImage(AppImages.myphoto),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Welcome back",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp,
                  ),
                ),
                Text(
                  "Mohamed Nofal",
                  style: TextStyle(
                    color: const Color(0xFF1A237E),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
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
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey.shade200,
              width: 1,
            ),
          ),
          child: const Icon(
            Icons.notifications,
            color: Color(0xFF5C6BC0),
          ),
        ),
      ],
    );
  }
}
import 'package:finance/core/widgets/Card_Item_Widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';
import 'package:dots_indicator/dots_indicator.dart';

class CustomCarouselWidget extends StatefulWidget {
  const CustomCarouselWidget({super.key});

  @override
  State<CustomCarouselWidget> createState() => _CustomCarouselWidgetState();
}

class _CustomCarouselWidgetState extends State<CustomCarouselWidget> {
  // استخدام ValueNotifier لمراقبة الصفحة الحالية وضمان تحديث النقط فوراً
  final ValueNotifier<int> _currentPageNotifier = ValueNotifier<int>(0);

  @override
  void dispose() {
    _currentPageNotifier.dispose(); // تنظيف الـ Notifier عند الخروج
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.h,
            padEnds: false,
            enableInfiniteScroll: false, // مخلينها false عشان كارتين بس والتمرير يكون مظبوط
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            enlargeFactor: 0.05,
            onPageChanged: (index, reason) {
              // هنا بنحدث القيمة والـ ValueListenableBuilder تحت هيحدث النقط لوحدها فوراً
              _currentPageNotifier.value = index;
            },
          ),
          items: [
            // الكارت الأول
            const CardItemWidget(
              width: 207,
              height: 263,
              cardName: 'Mohamed Nofal',
              balance: '5000 EG',
              cardNumber: '**** 3434',
              expiryDate: '12/30',
              gradientColors: [
                Color(0xFF637BFF),
                Color(0xFF4C5DF4),

              ],
            ),

            // الكارت الثاني
            const CardItemWidget(
              width: 327,
              height: 179,
              cardName: 'Nofal', // تقدر تغير البيانات هنا براحتك
              balance: '3,209 EG',
              cardNumber: '**** 4545',
              expiryDate: '10/28',
              gradientColors: [
                Color(0xFF3B489A),
                Color(0xFF1E265C),
              ],
            ),
          ],
        ),
        const Gap(16),

        // الـ Builder ده بيراقب التغيير ويحدث الـ DotsIndicator لوحده بدون تعليق
        ValueListenableBuilder<int>(
          valueListenable: _currentPageNotifier,
          builder: (context, activeIndex, child) {
            return DotsIndicator(
              dotsCount: 2,
              position: activeIndex.toDouble(), // تحويل الـ int لـ double عشان الإيرور
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OnboardingIndicators extends StatelessWidget {
  final int currentIndex;

  const OnboardingIndicators({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          width: 15.r,
          height: 15.r,
          decoration: BoxDecoration(
            color: index == currentIndex ? const Color(0xffF04C29) : const Color(0xffF04C29,).withOpacity(.5),
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
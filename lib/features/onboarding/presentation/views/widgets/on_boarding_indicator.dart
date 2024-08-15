import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OnboardingIndicators extends StatelessWidget {
  final int currentIndex;

  const OnboardingIndicators({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          width: 18.w,
          height: 18.h,
          decoration: BoxDecoration(
            color: index == currentIndex ? Colors.orange : Colors.brown,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
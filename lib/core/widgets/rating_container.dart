import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';
class RatingContainer extends StatelessWidget {
  const RatingContainer({super.key, required this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 51.w,
      height: 22.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: const Color(0xffF04C29).withOpacity(.52),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star_rounded,
            color: Colors.yellow,
            size: 12.sp,
          ),
          SizedBox(width: .5.w),
          Text(
            "$rating",
            style: Styles.textStyle12.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

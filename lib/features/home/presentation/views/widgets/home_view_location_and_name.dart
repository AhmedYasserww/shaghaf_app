import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';

class HomeViewLocationAndName extends StatelessWidget {
  const HomeViewLocationAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 96.w,
          height: 27.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: Color(0xffF04C29),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: Colors.white.withOpacity(.6),
                size: 12.5.sp,
              ),
              SizedBox(width: 8.w),
              Text(
                "Location",
                style: Styles.textStyle12.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h), // Adjust the height here
        Row(
          children: [
            Text(
              "Delightful open air",
              style: Styles.textStyle20.copyWith(color: Colors.white),
            ),
            Spacer(),
            Container(
              width: 51.w,
              height: 22.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Color(0xffF04C29).withOpacity(.52),
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
                    "4.7",
                    style: Styles.textStyle12.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

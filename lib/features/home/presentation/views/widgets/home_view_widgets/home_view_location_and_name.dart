import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/features/home/presentation/views/widgets/location_container.dart';

class HomeViewLocationAndName extends StatelessWidget {
  const HomeViewLocationAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         LocationContainer(text: "Location"),
        SizedBox(height: 20.h), // Adjust the height here
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

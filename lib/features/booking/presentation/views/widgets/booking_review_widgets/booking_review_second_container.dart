import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/widgets/custom_button.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_dotted_line.dart';

class BookingReviewSecondContainer extends StatelessWidget {
  const BookingReviewSecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          kBoxShadow
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0.w, vertical: 6.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Booking Details", style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w500
            ),),
            Row(
              children: [
                Column(
                  children: [
                    buildTimelineDot(),
                    buildDottedLine(lineLength: 31.5),
                    buildTimelineDot(),
                  ],
                ),
                SizedBox(width: 3.w,),
                Column(
                  children: [
                    Text(
                        "Tus, 13 Feb 2024 04:00 PM", style: Styles.textStyle10),
                    SizedBox(
                      height: 31.5.h,
                    ),
                    Text(
                        "Tus, 13 Feb 2024 10:00 PM", style: Styles.textStyle10),
                  ],
                ),
                const Spacer(),
                CustomButton(text: "Change",
                  borderRadius: BorderRadius.circular(20),
                  textStyle: Styles.textStyle12.copyWith(
                    color: kMostColorPicked,
                    fontWeight: FontWeight.w400,
                  ),
                  color: kMostColorPicked.withOpacity(.33),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.event_seat,color: kMostColorPicked,size: 12.sp,),
                SizedBox(width: 6.w,),
                Text("1 Seat", style: Styles.textStyle12.copyWith(
                    fontWeight: FontWeight.w400
                ),),
              ],
            )

          ],
        ),
      ),
    );
  }
}
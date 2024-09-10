import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';

import '../../../../../../core/utils/styles.dart';

class BookingReviewThirdContainer extends StatelessWidget {
  const BookingReviewThirdContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 15.w,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Payment Method",
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8.h,),
            Text("You will not be debited until your booking is confirmed", style: Styles.textStyle10),
            SizedBox(height: 15.h,),
            Row(
              children: [
                CircleAvatar(
                  radius: 8.r,
                  backgroundColor: kMostColorPicked,
                  child: Center(child: Icon(Icons.check,color: Colors.white,size: 12.sp,)),
                ),
                SizedBox(width: 5.w,),
                Text(
                  "Add card",
                  style: Styles.textStyle10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

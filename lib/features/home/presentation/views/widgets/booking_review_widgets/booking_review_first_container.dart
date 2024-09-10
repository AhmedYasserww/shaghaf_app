import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_image.dart';

import '../../../../../../core/utils/styles.dart';
class BookingReviewFirstContainer extends StatelessWidget {
  const BookingReviewFirstContainer({super.key});

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
        padding:  EdgeInsets.symmetric(horizontal: 13.0.w,vertical: 10.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImage(width: 100, height: 100, url: "assets/images/Frame 29956.png"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Training room",style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w600
                ),),
                Text("inside",style: Styles.textStyle14.copyWith(
                    color: Color(0xff555555)
                ),)
              ],
            ),
            Container(
              height: 30.r,
              width: 30.r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffD6D6D6),
              ),
              child: Icon(Icons.location_on_rounded,size: 20.sp,),
            )
          ],
        ),
      ),
    );
  }
}

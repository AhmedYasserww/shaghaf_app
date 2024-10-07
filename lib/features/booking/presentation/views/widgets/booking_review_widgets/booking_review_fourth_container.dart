import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/core/widgets/custom_image.dart';

import '../../../../../../core/utils/functions/styles.dart';

class BookingReviewFourthContainer extends StatelessWidget {
  const BookingReviewFourthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [kBoxShadow],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.0.w, right: 12.w, top: 10.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Discounts Available",
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    CustomButton(
                      text: "Add promo",
                      textStyle:
                          Styles.textStyle14.copyWith(color: kMostColorPicked),
                      borderRadius: BorderRadius.circular(8.r),
                      color: kMostColorPicked.withOpacity(.33),
                      height: 33,
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  height: 42.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(
                        width: 1,
                        color: Colors.black.withOpacity(.25),
                      )),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 13.0.w, vertical: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImage(
                            width: 22.w,
                            height: 17.h,
                            url: "assets/images/Group.png"),
                        Text(
                          "30% off  10 booking (up to EGP 150)",
                          style:
                              Styles.textStyle10.copyWith(color: Colors.grey),
                        ),
                        CustomButton(
                          text: "Apply",
                          textStyle: Styles.textStyle12
                              .copyWith(color: kMostColorPicked),
                          borderRadius: BorderRadius.circular(8.r),
                          color: kMostColorPicked.withOpacity(.33),
                          height: 26,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black.withOpacity(.15), // Set the color of the line
            thickness: 1,
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 6.w, left: 12.w, top: 6.h),
              child: Text(
                "Booking Charges",
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w500),
              )),
          Divider(
            color: Colors.black.withOpacity(.15), // Set the color of the line
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.0.w, right: 12.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "x1 Day EGP 100.0 x 1 Seat",
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "EGP 100.0",
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Due",
                      style: Styles.textStyle14.copyWith(
                          fontWeight: FontWeight.w500, color: kMostColorPicked),
                    ),
                    Text(
                      "EGP 100.0",
                      style: Styles.textStyle14.copyWith(
                          fontWeight: FontWeight.w500, color: kMostColorPicked),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/features/home/presentation/views/widgets/booking_review_widgets/booking_review_app_bar.dart';
import 'package:shagaf/features/home/presentation/views/widgets/booking_review_widgets/booking_review_first_container.dart';
import 'package:shagaf/features/home/presentation/views/widgets/booking_review_widgets/booking_review_second_container.dart';
import 'package:shagaf/features/home/presentation/views/widgets/booking_review_widgets/booking_review_third_container.dart';

import 'booking_review_fourth_container.dart';

class BookingReviewBody extends StatelessWidget {
  const BookingReviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const BookingReviewAppBar(),
            SizedBox(
              height: 20.h,
            ),
            const BookingReviewFirstContainer(),
            SizedBox(
              height: 24.h,
            ),
            const BookingReviewSecondContainer(),
            SizedBox(
              height: 24.h,
            ),
            const BookingReviewThirdContainer(),
            SizedBox(
              height: 24.h,
            ),
            const BookingReviewFourthContainer(),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Expanded(
                    child: CustomButton(
                  text: "Book",
                  height: 51.h,
                ))
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              children: [
                Expanded(
                    child: CustomButton(
                  text: "Cancellation Policy",
                  shadow: true,
                  color: Colors.white,
                  textStyle: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w500, color: const Color(0xff455A64)),
                  height: 51.h,
                ))
              ],
            ),
            SizedBox(
              height: 26.h,
            ),
          ],
        ),
      ),
    );
  }
}

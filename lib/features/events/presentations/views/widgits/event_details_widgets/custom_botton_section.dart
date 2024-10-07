import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/functions/app_router.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';

class CustomButtonSection extends StatelessWidget {
  const CustomButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      padding: EdgeInsets.symmetric(vertical: 21.0.h, horizontal: 30.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, -2),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '200.0 EGP/person',
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w700,
                  color: kMostColorPicked,
                ),
              ),
            ],
          ),
          // Select Date Button
          CustomButton(
            text: "Book Now",
            color: kMostColorPicked,
            borderRadius: BorderRadius.circular(12.r),
            width: 131,
            height: 38,
            textStyle: Styles.textStyle16.copyWith(
              color: Colors.white,
            ),
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kBookingReviewView);
            },
          )
        ],
      ),
    );
  }
}

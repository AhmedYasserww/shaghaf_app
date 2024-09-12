import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/styles.dart';

class CustomButtonSection extends StatelessWidget {
  const CustomButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      padding: EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 33.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
        boxShadow: [
          const BoxShadow(
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
                '100.0 EGP/person',
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w700,
                  color: kMostColorPicked,
                ),
              ),

            ],
          ),
          // Select Date Button
          SizedBox(
            height: 38.h,
            child: ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kMostColorPicked,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              child: Center(
                child: Text(
                  'Book Now',
                  style: Styles.textStyle16.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

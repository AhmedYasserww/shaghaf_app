import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/functions/styles.dart';
class CustomButtonOfBirthDayView extends StatelessWidget {
  const CustomButtonOfBirthDayView({super.key, required this.price,});
final String price;
  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: const Color(0xff284844),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Loading",
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              price,
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

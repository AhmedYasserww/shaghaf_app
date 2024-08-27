import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';

class HomeViewRowButtons extends StatelessWidget {
  const HomeViewRowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: 110.w,
            child: CustomButton(
              height: 48,
              text: "Membership",
              color: Color(0xffF04C29).withOpacity(.9),
              textStyle: Styles.textStyle16
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
            )),
        SizedBox(
            width: 110.w,
            child: CustomButton(
              height: 48,
              text: "Birthday",
              color: Color(0xffF04C29).withOpacity(.9),
              textStyle: Styles.textStyle16
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
            )),
        SizedBox(
            width: 110.w,
            child: CustomButton(
              height: 48,
              text: "Photo session",
              color: Color(0xffF04C29).withOpacity(.9),
              textStyle: Styles.textStyle16
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
            )),
      ],
    );
  }
}

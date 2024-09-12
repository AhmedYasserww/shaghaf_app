import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/app_router.dart';
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
              color: const Color(0xffF04C29).withOpacity(.9),
              onPressed: (){
                GoRouter.of(context).push(AppRouter.kMemberShipView);
              },
            )),
        SizedBox(
            width: 110.w,
            child: CustomButton(
              height: 48,
              text: "Birthday",
              color: const Color(0xffF04C29).withOpacity(.9),

            )),
        SizedBox(
            width: 115.w,
            child: CustomButton(
              height: 48,
              text: "Photo session",
              color: const Color(0xffF04C29).withOpacity(.9),
            )),
      ],
    );
  }
}

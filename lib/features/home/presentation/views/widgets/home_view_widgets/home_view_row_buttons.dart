import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/app_router.dart';
import 'package:shagaf/core/widgets/custom_button.dart';

import '../../../../../../core/utils/styles.dart';

class HomeViewRowButtons extends StatelessWidget {
  const HomeViewRowButtons({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          width: 110,
          height: 48,
          text: "Membership",
          textStyle: Styles.textStyle16.copyWith(color: Colors.white,fontWeight: FontWeight.w500),
          color: const Color(0xffF04C29).withOpacity(.9),
          onPressed: (){
            GoRouter.of(context).push(AppRouter.kMemberShipView);
          },
        ),
        CustomButton(
          width: 110,
          height: 48,
          text: "Birthday",
          textStyle: Styles.textStyle16.copyWith(color: Colors.white,fontWeight: FontWeight.w500),
          color: const Color(0xffF04C29).withOpacity(.9),

        ),
        CustomButton(
          width: 110,
          height: 48,
          text: "Photo session",
          textStyle: Styles.textStyle16.copyWith(color: Colors.white,fontWeight: FontWeight.w500),
          color: const Color(0xffF04C29).withOpacity(.9),
        ),
      ],
    );
  }
}



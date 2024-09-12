import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
class CustomAppBarForMemberShip extends StatelessWidget {
  const CustomAppBarForMemberShip({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          SizedBox(
            width: 83.w,
          ),
          Text(
            "Membership",
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

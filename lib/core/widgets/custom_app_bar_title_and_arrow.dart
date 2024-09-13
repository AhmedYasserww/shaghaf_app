
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../utils/styles.dart';

class CustomAppBarTitleAndArrow extends StatelessWidget {
  const CustomAppBarTitleAndArrow({super.key, required this.title});


  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            GoRouter.of(context).pop();
          },
          child:  Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 20.sp,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              title,
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}

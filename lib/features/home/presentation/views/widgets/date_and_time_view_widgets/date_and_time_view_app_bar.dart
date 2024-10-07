import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/functions/styles.dart';

class DateAndTimeViewAppBar extends StatelessWidget {
  const DateAndTimeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        SizedBox(
          width: 70.w,
        ),
        Text(
          "Select date and time",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

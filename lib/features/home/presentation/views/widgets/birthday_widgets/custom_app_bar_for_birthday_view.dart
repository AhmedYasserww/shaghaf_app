import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/functions/styles.dart';
class CustomAppBarForBirthDayView extends StatelessWidget {
  const CustomAppBarForBirthDayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_new_outlined,size: 20,)),
        SizedBox(
          width: 85.w,
        ),
        Text(
          "Birthday",
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/styles.dart';
class NotificationsAppBar extends StatelessWidget {
  const NotificationsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20.sp),
          onTap: () {
            GoRouter.of(context).pop();
          },
        ),
        SizedBox(width: 89.w,),
        Text("Notifications", style: Styles.textStyle20.copyWith(
          fontWeight: FontWeight.w500
        )),
      ],
    );
  }
}

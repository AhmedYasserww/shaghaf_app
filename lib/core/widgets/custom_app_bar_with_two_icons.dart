import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/functions/app_router.dart';

import '../utils/functions/styles.dart';
class CustomAppBarWithTwoIcons extends StatelessWidget {
  const CustomAppBarWithTwoIcons({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          child: Icon(Icons.notification_add_outlined, color: Colors.black, size: 24.sp),
          onTap: () {
            GoRouter.of(context).push(AppRouter.kNotificationsView);
          },
        ),
        Text(title, style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500)),
        IconButton(
          icon: Icon(Icons.list_sharp, color: Colors.black, size: 24.sp),
          onPressed: () {
            Scaffold.of(context).openEndDrawer(); // Use openEndDrawer if using endDrawer
          },
        ),
      ],
    );
  }
}

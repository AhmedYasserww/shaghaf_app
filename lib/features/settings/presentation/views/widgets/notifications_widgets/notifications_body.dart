import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'notifications_app_bar.dart';
import 'notifications_list_view.dart';
class NotificationsBody extends StatelessWidget {
  const NotificationsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Column(
        children: [
          SizedBox(height: 16.h,),
          const NotificationsAppBar(),
          SizedBox(height: 32.h,),
          const Expanded(child: NotificationsListView())
        ],
      ),
    );
  }
}

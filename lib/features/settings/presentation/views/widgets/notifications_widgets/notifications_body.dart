import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_app_bar_title_and_arrow.dart';

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
          const CustomAppBarTitleAndArrow(title: "Notifications"),
          SizedBox(height: 32.h,),
          const Expanded(child: NotificationsListView())
        ],
      ),
    );
  }
}

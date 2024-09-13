import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
class EventsAppBar extends StatelessWidget {
  const EventsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.notification_add_outlined, color: Colors.black, size: 24.sp),
          onPressed: () {
          },
        ),
        Text("Events", style: Styles.textStyle16.copyWith(
          fontWeight: FontWeight.w500
        )),
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

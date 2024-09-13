import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
class SettingsAppBar extends StatelessWidget {
  const SettingsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(child: Icon(Icons.notification_add_outlined, color: Colors.black, size: 24.sp)),
        Text("Offers", style: Styles.textStyle16),
        InkWell(
          child: Icon(Icons.list_sharp, color: Colors.black, size: 24.sp),
          onTap: () {
            Scaffold.of(context).openEndDrawer(); // Use openEndDrawer if using endDrawer
          },
        ),
      ],
    );
  }
}

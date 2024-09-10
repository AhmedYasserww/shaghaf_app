import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
class OffersAppBar extends StatelessWidget {
  const OffersAppBar({super.key});

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
        Text("Offers", style: Styles.textStyle16),
        IconButton(
          icon: Icon(Icons.list_sharp, color: Colors.black, size: 24.sp),
          onPressed: () {
            Scaffold.of(context).openEndDrawer(); // Use openEndDrawer if using endDrawer
          },
        ),
      ],
    );;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';

class BookingHistoryAppBar extends StatelessWidget {
  const BookingHistoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.notification_add_outlined, color: Colors.black, size: 24.sp),
            onPressed: () {
            },
          ),
          Text("Booking History", style: Styles.textStyle16),
          IconButton(
            icon: Icon(Icons.list_sharp, color: Colors.black, size: 24.sp),
            onPressed: () {
              Scaffold.of(context).openEndDrawer(); // Use openEndDrawer if using endDrawer
            },
          ),
        ],
      ),
    );
  }
}

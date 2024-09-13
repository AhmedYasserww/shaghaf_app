import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'booking_history_past_item.dart';

class BookingHistoryPast extends StatelessWidget {
  const BookingHistoryPast({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h,),
        ListView.builder(
          shrinkWrap: true, // Use shrinkWrap to size the ListView according to its content
          physics: const NeverScrollableScrollPhysics(), // Disable scrolling for the inner ListView
          itemCount: 3,
          itemBuilder: (context, i) {
            return Padding(
              padding: EdgeInsets.only(bottom: 16.h,right: 18.w,left: 17.w),
              child: const BookingHistoryPastItem(),
            );
          },
        ),
      ],
    );
  }
}

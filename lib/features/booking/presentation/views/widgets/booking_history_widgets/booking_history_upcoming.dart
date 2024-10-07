import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'booking_history_contianer_for_clock.dart';
import 'booking_history_details.dart';

class BookingHistoryUpcoming extends StatelessWidget {
  const BookingHistoryUpcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16.h,
        ),
        const BookingHistoryContianerForClock(),
        SizedBox(
          height: 12.h,
        ),
        const BookingHistoryDetails(),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/booking_history_widgets/booking_history_contianer_for_clock.dart';
import 'package:shagaf/features/home/presentation/views/widgets/booking_history_widgets/booking_history_details.dart';
class BookingHistoryUpcoming extends StatelessWidget {
  const BookingHistoryUpcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h,),
        BookingHistoryContianerForClock(),
        SizedBox(height: 12.h,),
        BookingHistoryDetails(),
        SizedBox(height: 20.h,),
      ],
    );
  }
}

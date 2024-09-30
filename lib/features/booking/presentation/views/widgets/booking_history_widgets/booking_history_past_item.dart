import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';

import '../../../../../../core/utils/functions/styles.dart';
import 'booking_historty_custom_item.dart';
class BookingHistoryPastItem extends StatelessWidget {
  const BookingHistoryPastItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      width: 370.w,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          kBoxShadow
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Training Room",
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 18.h,
          ),
          const BookingHistortyCustomItem(
              icon: Icons.calendar_month,
              text: "Date",
              timeOrPrice: "18/2/2024"),
          SizedBox(
            height: 12.h,
          ),
          const BookingHistortyCustomItem(
              icon: Icons.access_time_filled_rounded,
              text: "Time",
              timeOrPrice: "09:00 Am"),
          SizedBox(
            height: 12.h,
          ),
          const BookingHistortyCustomItem(
              icon: Icons.event_seat, text: "Seats", timeOrPrice: "x1"),
          SizedBox(
            height: 12.h,
          ),
          const BookingHistortyCustomItem(
              icon: Icons.attach_money,
              text: "Deposite",
              timeOrPrice: "50.00 LE"),
          SizedBox(
            height: 12.h,
          ),
          const BookingHistortyCustomItem(
              icon: Icons.attach_money,
              text: "The rest of the money",
              timeOrPrice: "30:00 Am"),
          SizedBox(
            height: 12.h,
          ),
          const BookingHistortyCustomItem(
              icon: Icons.coffee, text: "Coffe", timeOrPrice: "20:00 Am"),
        ],
      ),
    );
  }
}

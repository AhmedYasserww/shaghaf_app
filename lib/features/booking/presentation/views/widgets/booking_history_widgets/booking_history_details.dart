import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';

import 'booking_historty_custom_item.dart';

class BookingHistoryDetails extends StatelessWidget {
  const BookingHistoryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      width: 370.w,
      height: 300.h,
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
          Text(
            "Cancellation Deadline: 11/2/2024",
            style: Styles.textStyle14.copyWith(color: kMostColorPicked),
          ),
          SizedBox(
            height: 16.h,
          ),
          const BookingHistortyCustomItem(
              icon: Icons.calendar_month,
              text: "Date",
              timeOrPrice: "18/2/2024"),
          SizedBox(
            height: 6.h,
          ),
          const BookingHistortyCustomItem(
              icon: Icons.access_time_filled_rounded,
              text: "Time",
              timeOrPrice: "09:00 Am"),
          SizedBox(
            height: 6.h,
          ),
          const BookingHistortyCustomItem(
              icon: Icons.event_seat, text: "Seats", timeOrPrice: "x1"),
          SizedBox(
            height: 6.h,
          ),
          const BookingHistortyCustomItem(
              icon: Icons.attach_money,
              text: "Deposite",
              timeOrPrice: "50.00 LE"),
          SizedBox(
            height: 6.h,
          ),
          const BookingHistortyCustomItem(
              icon: Icons.attach_money,
              text: "The rest of the money",
              timeOrPrice: "30:00 Am"),
          SizedBox(
            height: 6.h,
          ),
          const BookingHistortyCustomItem(
              icon: Icons.coffee, text: "Coffe", timeOrPrice: "20:00 Am"),
          SizedBox(
            height: 12.h,
          ),
          Row(
            children: [
              const Expanded(
                  child: CustomButton(
                text: "Extra Time",
                color: kMostColorPicked,
              )),
              SizedBox(
                width: 13.w,
              ),
              Expanded(
                  child: CustomButton(
                text: "Add Items",
                color: Colors.white,
                textStyle: Styles.textStyle14.copyWith(
                    color: kMostColorPicked, fontWeight: FontWeight.w500),
                shadow: true,
              )),
            ],
          )
        ],
      ),
    );
  }
}

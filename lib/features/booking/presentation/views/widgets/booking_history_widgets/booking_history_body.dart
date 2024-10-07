import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'booking_history_app_bar.dart';
import 'booking_history_past.dart';
import 'booking_history_tap_bar.dart';
import 'booking_history_upcoming.dart';

class BookingHistoryBody extends StatefulWidget {
  const BookingHistoryBody({super.key});

  @override
  State<BookingHistoryBody> createState() => _BookingHistoryBodyState();
}

class _BookingHistoryBodyState extends State<BookingHistoryBody> {
  int _index = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            const BookingHistoryAppBar(),
            SizedBox(
              height: 24.h,
            ),
            BookingHistoryTapBar(
              onIndexChanged: (int value) {
                setState(() {
                  _index = value;
                });
              },
            ),
            _index == 1
                ? const BookingHistoryUpcoming()
                : const BookingHistoryPast(),
          ],
        ),
      ),
    );
  }
}

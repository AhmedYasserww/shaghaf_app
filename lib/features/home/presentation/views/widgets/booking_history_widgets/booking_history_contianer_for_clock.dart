import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_image.dart';
import 'package:shagaf/features/home/presentation/views/widgets/booking_history_widgets/clock.dart';

class BookingHistoryContianerForClock extends StatelessWidget {
  const BookingHistoryContianerForClock({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomImage(
      width: 390.w,
      height: 329,
      url: "assets/images/Rectangle 346.png",
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Clock(),
        ],
      ),
    );
  }
}

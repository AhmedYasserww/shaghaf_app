import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'package:shagaf/core/widgets/custom_app_bar_with_two_icons.dart';

class BookingHistoryAppBar extends StatelessWidget {
  const BookingHistoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: const CustomAppBarWithTwoIcons(title: "Booking History"),
    );
  }
}

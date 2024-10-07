import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_app_bar_title_and_arrow.dart';
import 'package:shagaf/features/home/presentation/views/widgets/date_and_time_view_widgets/date_and_time_time_picker.dart';
import 'package:shagaf/features/home/presentation/views/widgets/date_and_time_view_widgets/date_and_time_view_app_bar.dart';

import 'date_and_time_table_calender.dart';

class DateAndTimeViewBody extends StatelessWidget {
  const DateAndTimeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBarTitleAndArrow(title: "Select date and time"),
            DateAndTimeTableCalender(),
            DateAndTimeTimePicker(),
          ],
        ),
      ),
    );
  }
}

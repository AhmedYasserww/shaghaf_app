import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/date_and_time_view_widgets/date_and_time_time_picker.dart';
import 'package:shagaf/features/home/presentation/views/widgets/date_and_time_view_widgets/date_and_time_view_app_bar.dart';

import 'date_and_time_table_calender.dart';
class DateAndTimeViewBody extends StatelessWidget {
  const DateAndTimeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            DateAndTimeViewAppBar(),
            DateAndTimeTableCalender(),
            DateAndTimeTimePicker(),
          ],
        ),
      ),
    );
  }
}

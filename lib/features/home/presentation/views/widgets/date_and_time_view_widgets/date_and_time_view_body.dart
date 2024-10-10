import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/functions/app_router.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'package:shagaf/core/widgets/custom_app_bar_title_and_arrow.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/features/home/presentation/views/widgets/date_and_time_view_widgets/date_and_time_time_picker.dart';
import 'package:shagaf/features/home/presentation/views/widgets/date_and_time_view_widgets/number_of_seats_widget.dart';

import 'date_and_time_table_calender.dart';

class DateAndTimeViewBody extends StatefulWidget {
  const DateAndTimeViewBody({super.key});

  @override
  State<DateAndTimeViewBody> createState() => _DateAndTimeViewBodyState();
}

class _DateAndTimeViewBodyState extends State<DateAndTimeViewBody> {
  DateTime selectedFromTime = DateTime.now();
  DateTime selectedToTime = DateTime.now();
  int numberOfSeats = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            child: Column(
              children: [
                const CustomAppBarTitleAndArrow(title: "Select date and time"),
                DateAndTimeTableCalender(
                  onDateSelected: (DateTime selectedDate) {
                    setState(() {
                      selectedFromTime = DateTime(
                          selectedDate.year,
                          selectedDate.month,
                          selectedDate.day,
                          selectedFromTime.hour,
                          selectedFromTime.minute);
                      selectedToTime = DateTime(
                          selectedDate.year,
                          selectedDate.month,
                          selectedDate.day,
                          selectedToTime.hour,
                          selectedToTime.minute);
                    });
                    print('Selected From DateTime: $selectedFromTime');
                    print('Selected To DateTime: $selectedToTime');
                  },
                ),
                DateAndTimeTimePicker(
                  onTimeSelectedTo: (DateTime time) {
                    setState(() {
                      selectedToTime = DateTime(
                          selectedToTime.year, // Preserve the selected year
                          selectedToTime.month, // Preserve the selected month
                          selectedToTime.day, // Preserve the selected day
                          time.hour,
                          time.minute);
                      print('Selected DateTime To: $selectedToTime');
                    });
                  },
                  onTimeSelectedFrom: (DateTime time) {
                    setState(() {
                      selectedFromTime = DateTime(
                          selectedFromTime.year, // Preserve the selected year
                          selectedFromTime.month, // Preserve the selected month
                          selectedFromTime.day, // Preserve the selected day
                          time.hour,
                          time.minute);
                      print('Selected DateTime From: $selectedFromTime');
                    });
                  },
                ),
              ],
            ),
          ),
           NumberOfSeatsWidget(onNumberOfSeatsChanged: (int value) {
            setState(() {
              numberOfSeats = value;
            });
          },),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            child: GestureDetector(
              onTap: (){
                GoRouter.of(context).push(AppRouter.kBookingReviewView,extra: {
                  "numberOfSeats" : numberOfSeats,
                  "selectedFromTime" : selectedFromTime,
                  "selectedToTime" : selectedToTime,
                });
              },
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: "Loading",
                      height: 45.h,
                      color: Color(0xff919393),
                      textStyle:
                          Styles.textStyle16.copyWith(fontWeight: FontWeight.w500,color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_picker_spinner/time_picker_spinner.dart';

import '../../../../../../core/utils/functions/styles.dart';

class DateAndTimeTimePicker extends StatefulWidget {
  const DateAndTimeTimePicker({super.key, required this.onTimeSelectedFrom, required this.onTimeSelectedTo});
  final Function(DateTime) onTimeSelectedFrom;
  final Function(DateTime) onTimeSelectedTo;
  @override
  State<DateAndTimeTimePicker> createState() => _DateAndTimeTimePickerState();
}

class _DateAndTimeTimePickerState extends State<DateAndTimeTimePicker> {
  DateTime _selectedTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("From:",style: Styles.textStyle16,),
        SizedBox(height: 13.h,),
        SizedBox(
          child: Center(
            child: TimePickerSpinner(
              is24HourMode: false,
              normalTextStyle: const TextStyle(fontSize: 24, color: Colors.grey),
              highlightedTextStyle: const TextStyle(fontSize: 28, color: Colors.black),
              spacing: 6.5, // Controls the spacing between items
              itemHeight: 35.h,
              itemWidth: 60.w,
              isForce2Digits: true, // Forces hour and minute to display in 2 digits
              time: _selectedTime,
              minutesInterval: 1, // Interval for minutes
              onTimeChange: (time) {
                setState(() {
                  _selectedTime = DateTime(
                    time.hour,
                    time.minute,
                  );
                  widget.onTimeSelectedFrom(time);
                });
              },
            ),
          ),
        ),
        Text("To:",style: Styles.textStyle16,),
        Center(
          child: TimePickerSpinner(
            is24HourMode: false,
            normalTextStyle: const TextStyle(fontSize: 24, color: Colors.grey),
            highlightedTextStyle: const TextStyle(fontSize: 28, color: Colors.black),
            spacing: 2.5, // Controls the spacing between items
            itemHeight: 35.h,
            itemWidth: 60.w,
            isForce2Digits: true, // Forces hour and minute to display in 2 digits
            time: _selectedTime,
            minutesInterval: 1, // Interval for minutes
            onTimeChange: (time) {
              setState(() {
                // Update the selected time while preserving the date
                _selectedTime = DateTime(
                  time.hour,
                  time.minute,
                );
                widget.onTimeSelectedTo(time);
              });
            },
          ),
        ),
      ],
    );
  }
}

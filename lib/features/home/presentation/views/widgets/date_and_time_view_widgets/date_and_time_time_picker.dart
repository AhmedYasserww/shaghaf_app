import 'package:flutter/material.dart';

class DateAndTimeTimePicker extends StatefulWidget {
  const DateAndTimeTimePicker({super.key});

  @override
  State<DateAndTimeTimePicker> createState() => _DateAndTimeTimePickerState();
}

class _DateAndTimeTimePickerState extends State<DateAndTimeTimePicker> {
  DateTime _selectedTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Text("From:",style: Styles.textStyle16,),
        //SizedBox(height: 13.h,),
        // Center(
        //   child: TimePickerSpinner(
        //     is24HourMode: false,
        //     normalTextStyle: TextStyle(fontSize: 24, color: Colors.grey),
        //     highlightedTextStyle: TextStyle(fontSize: 28, color: Colors.black),
        //     spacing: 2.5, // Controls the spacing between items
        //     itemHeight: 56.h,
        //     isForce2Digits: true, // Forces hour and minute to display in 2 digits
        //     time: _selectedTime,
        //     minutesInterval: 1, // Interval for minutes
        //     onTimeChange: (time) {
        //       setState(() {
        //         // Update the selected time while preserving the date
        //         _selectedTime = DateTime(
        //           _selectedTime.year,
        //           _selectedTime.month,
        //           _selectedTime.day,
        //           time.hour,
        //           time.minute,
        //         );
        //         print(_selectedTime);
        //       });
        //     },
        //   ),
        // ),
        //Text("From:",style: Styles.textStyle16,),
        // Center(
        //   child: TimePickerSpinner(
        //     is24HourMode: false,
        //     normalTextStyle: TextStyle(fontSize: 24, color: Colors.grey),
        //     highlightedTextStyle: TextStyle(fontSize: 28, color: Colors.black),
        //     spacing: 2.5, // Controls the spacing between items
        //     itemHeight: 56.h,
        //     isForce2Digits: true, // Forces hour and minute to display in 2 digits
        //     time: _selectedTime,
        //     minutesInterval: 1, // Interval for minutes
        //     onTimeChange: (time) {
        //       setState(() {
        //         // Update the selected time while preserving the date
        //         _selectedTime = DateTime(
        //           _selectedTime.year,
        //           _selectedTime.month,
        //           _selectedTime.day,
        //           time.hour,
        //           time.minute,
        //         );
        //         print(_selectedTime);
        //       });
        //     },
        //   ),
        // ),
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:shagaf/constants.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../../core/utils/functions/styles.dart';

class DateAndTimeTableCalender extends StatefulWidget {
  const DateAndTimeTableCalender({super.key, required this.onDateSelected});

  final Function(DateTime) onDateSelected;

  @override
  State<DateAndTimeTableCalender> createState() =>
      _DateAndTimeTableCalenderState();
}

class _DateAndTimeTableCalenderState extends State<DateAndTimeTableCalender> {
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: _selectedDay,
      firstDay: DateTime(2023, 1, 1),
      lastDay: DateTime(2024, 12, 31),
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      onDaySelected: (selectedDay, focusedDay) {
        if (selectedDay.isAfter(DateTime.now())) {
          setState(() {
            _selectedDay = selectedDay;
            widget.onDateSelected(selectedDay);
          });
        } else {
          print('Selected date is not in the future.');
        }
      },
      calendarFormat: CalendarFormat.month,
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        formatButtonShowsNext: false,
        titleTextStyle: Styles.textStyle20,
      ),
      calendarStyle: CalendarStyle(
        defaultTextStyle: Styles.textStyle16,
        todayDecoration: const BoxDecoration(
          color: kMostColorPicked,
          shape: BoxShape.circle,
        ),
        selectedDecoration: const BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

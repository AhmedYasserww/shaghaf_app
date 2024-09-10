import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';

class BookingHistoryTapBar extends StatefulWidget {
  final ValueChanged<int> onIndexChanged; // Callback function to pass index

  const BookingHistoryTapBar({super.key, required this.onIndexChanged});

  @override
  _BookingHistoryTapBarState createState() => _BookingHistoryTapBarState();
}

class _BookingHistoryTapBarState extends State<BookingHistoryTapBar> {
  int _selectedIndex = 1; // Default selection is 'Upcoming'

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: SizedBox(
        height: 40.h,
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                text: "Past",
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                    widget.onIndexChanged(_selectedIndex); // Notify parent of the index change
                  });
                },
                color: _selectedIndex == 0 ? kMostColorPicked : const Color(0xffE7E3E3),
                textStyle: Styles.textStyle14.copyWith(
                  color: _selectedIndex == 0 ? Colors.white : Colors.black,
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), bottomLeft: Radius.circular(10.r)),
              ),
            ),
            Expanded(
              child: CustomButton(
                text: "Upcoming",
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                    widget.onIndexChanged(_selectedIndex); // Notify parent of the index change
                  });
                },
                color: _selectedIndex == 1 ? kMostColorPicked : const Color(0xffE7E3E3),
                textStyle: Styles.textStyle14.copyWith(
                  color: _selectedIndex == 1 ? Colors.white : Colors.black,
                ),
                borderRadius: BorderRadius.only(topRight: Radius.circular(10.r), bottomRight: Radius.circular(10.r)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

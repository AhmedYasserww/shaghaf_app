import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_indicator.dart';
import 'home_view_app_bar.dart';
import 'home_view_location_and_name.dart';

class HomeViewCarouselDetails extends StatelessWidget {
  const HomeViewCarouselDetails({
    super.key, required this.currentIndex, required this.length,
  });
  final int currentIndex;
  final int length;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const HomeViewAppBar(),
        SizedBox(
          height: 88.h,
        ), // Adjust the height here
        const HomeViewLocationAndName(),
        Container(
          height: 42.h,
          color: Colors.white.withOpacity(.12),
          child: Padding(
            padding: EdgeInsets.only(left: 23.0.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomIndicator(
                currentIndex: currentIndex,
                length: length,
                mainAxisAlignment: MainAxisAlignment.start,
                height: 10,
                width: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

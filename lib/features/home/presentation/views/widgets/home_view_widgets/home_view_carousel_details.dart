import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_indicator.dart';
import 'home_view_app_bar.dart';
import 'home_view_location_and_name.dart';

class HomeViewCarouselDetails extends StatelessWidget {
  const HomeViewCarouselDetails({
    super.key,
    required this.currentIndex,
    required this.length,
  });

  final int currentIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const HomeViewAppBar(),
          SizedBox(
            height: 88.h,
          ), // Adjust the height here
          const HomeViewLocationAndName(),
          SizedBox(height: 24.h),
          Align(
            alignment: Alignment.bottomLeft,
            child: CustomIndicator(
              currentIndex: currentIndex,
              length: length,
              mainAxisAlignment: MainAxisAlignment.start,
              height: 10,
              width: 10,
            ),
          ),
        ],
      ),
    );
  }
}

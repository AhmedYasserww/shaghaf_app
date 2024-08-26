import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:shagaf/core/widgets/custom_indicator.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_list.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_location_and_name.dart';

class HomeViewCarouselDetails extends StatelessWidget {
  const HomeViewCarouselDetails({
    Key? key,
    required this.currentIndex,
    required this.length,
  }) : super(key: key);

  final int currentIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeViewAppBar(),
          SizedBox(
            height: 88.h,
          ), // Adjust the height here
          HomeViewLocationAndName(),
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
          SizedBox(
            height: 44.h,
          ),
          Text(
            "Advertisement",
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
          ),
          HomeViewList()
        ],
      ),
    );
  }
}

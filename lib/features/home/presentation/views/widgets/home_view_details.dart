import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:shagaf/core/widgets/custom_indicator.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_list.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_location_and_name.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_row_buttons.dart';

class HomeViewDetails extends StatelessWidget {
  const HomeViewDetails({
    Key? key,
    required this.currentIndex,
    required this.length,
  }) : super(key: key);

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
          HomeViewAppBar(),
          SizedBox(
            height: 100.h,
          ), // Adjust the height here
          const HomeViewLocationAndName(),
          SizedBox(height: 10.h),
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
            height: 52.h,
          ),

          Text(
            "Advertisement",
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
          ),
          const HomeViewList(),
          SizedBox(
            height: 24.h,
          ),
          const HomeViewRowButtons(),

        ],
      ),
    );
  }
}

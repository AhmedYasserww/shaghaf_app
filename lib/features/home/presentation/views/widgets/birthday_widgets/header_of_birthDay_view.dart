import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/widgets/custom_dotted_line.dart';
class HeaderOfBirthDayView extends StatelessWidget {
  const HeaderOfBirthDayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: 24.w),
      padding:  EdgeInsets.only(left: 13.w,right: 5.w ,top: 18.h,bottom: 19.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.r),
            top: Radius.circular(12.r)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding:  EdgeInsets.only(top: 4.h),
              child: buildTimelineDot()),
          SizedBox(width: 16.w),
          Expanded(
            child: Text(
                maxLines: 2,
                "You can buy them from any where else without any cost or services"),
          )

        ],
      ),
    );
  }
}

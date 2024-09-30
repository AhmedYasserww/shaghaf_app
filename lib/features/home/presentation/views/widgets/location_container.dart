import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/functions/styles.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 75, // Ensure there's a minimum width
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w), // Add padding around text
      height: 27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: const Color(0xffF04C29),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Ensures the Row takes only as much width as needed
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.location_on,
            color: Colors.white.withOpacity(.6),
            size: 12.5.sp,
          ),
          SizedBox(width: 8.w),
          Text(
            text,
            style: Styles.textStyle12.copyWith(
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis, // Handle overflow if needed
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

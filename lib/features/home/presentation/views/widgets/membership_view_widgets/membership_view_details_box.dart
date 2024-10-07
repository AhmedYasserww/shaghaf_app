import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/widgets/custom_dotted_line.dart';

class MembershipViewDetailsBox extends StatelessWidget {
  const MembershipViewDetailsBox(
      {super.key,
      required this.price,
      required this.description1,
      this.description2});
  final String price;
  final String description1;
  final String? description2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      padding: EdgeInsets.only(left: 13.w, right: 5.w, top: 18.h, bottom: 19.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.r)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildTimelineDot(),
              Padding(
                padding: EdgeInsets.only(left: 4.0.w),
                child: buildDottedLine(lineLength: 57.h),
              ),
              buildTimelineDot(),
              if (description2 != null)
                Padding(
                  padding: EdgeInsets.only(left: 4.0.w),
                  child: buildDottedLine(lineLength: 56.h),
                ),
              if (description2 != null) buildTimelineDot(),
            ],
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildDetailsText(price),
                buildDetailsText(description1),
                if (description2 != null) buildDetailsText(description2!),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

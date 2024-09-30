import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/functions/styles.dart';
class MembershipCheck extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onToggle;
  final String text;

  const MembershipCheck({
    super.key,
    required this.isSelected,
    required this.onToggle, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h, left: 24.w, right: 24.w),
      child: Row(
        children: [
          GestureDetector(
            onTap: onToggle,
            child: Container(
              height: 20.h,
              width: 20.w,
              decoration: BoxDecoration(
                color: isSelected ? kMostColorPicked : Colors.white,
                border: isSelected ? null : Border.all(color: const Color(0xffFFCC0A)),
                borderRadius: isSelected ? BorderRadius.circular(5) : BorderRadius.circular(4),
              ),
              child: isSelected
                  ? Icon(Icons.check, size: 18.sp, color: Colors.white)
                  : null,
            ),
          ),
          SizedBox(width: 6.w),
          Text(
            text,
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

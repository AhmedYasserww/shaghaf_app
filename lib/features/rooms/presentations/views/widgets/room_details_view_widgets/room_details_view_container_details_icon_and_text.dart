import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
class RoomDetailsViewContainerDetailsIconAndText extends StatelessWidget {
  const RoomDetailsViewContainerDetailsIconAndText({super.key, required this.icon, required this.text});
final IconData icon;
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Row(
        children: [
          Icon(icon,size: 20.sp,color: kIconColor,),
          SizedBox(width: 4.w,),
          Text(text,style: Styles.textStyle14,)
        ],
      ),
    );
  }
}

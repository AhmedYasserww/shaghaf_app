import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';
class NotificationsItem extends StatelessWidget {
  const NotificationsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 6.h),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xff263238)))
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 37.5.r,
            backgroundImage: const AssetImage("assets/images/Frame 1080 2.png"),
          ),
          SizedBox(width: 8.h,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Ceramics workshop Event",style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500,fontSize: 19.sp),),
              SizedBox(height: 8.h,),
              Row(
                children: [
                  Text("today",style: Styles.textStyle16,),
                  SizedBox(width: 8.w,),
                  Text("12:05 pm",style: Styles.textStyle16,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

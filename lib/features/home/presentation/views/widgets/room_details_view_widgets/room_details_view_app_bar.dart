import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/styles.dart';
class RoomDetailsViewAppBar extends StatelessWidget {
  const RoomDetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 20.5.w,right: 24.5.w,top: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(Icons.arrow_back_ios_new,size: 16.sp,color: Colors.black), onPressed: () {
            GoRouter.of(context).pop();
          },),
          Text("Training room",style: Styles.textStyle16.copyWith(
            color: Color(0xff111111),
            fontWeight: FontWeight.w500
          ),),
          Container(
            width: 24.r,
            height: 24.r,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.5),
                shape: BoxShape.circle
            ),
            child: Center(child: Icon(Icons.favorite,size: 18.sp,color: Color(0xffF04C29),)),
          ),
        ],
      ),
    );
  }
}

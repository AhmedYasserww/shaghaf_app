import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 60.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu_outlined,size: 24.sp,)),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,size: 24.sp,)),
        ],
      ),
    );
  }
}

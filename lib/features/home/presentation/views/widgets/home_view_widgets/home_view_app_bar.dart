import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/app_router.dart';
class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, icon: Icon(Icons.menu_outlined,size: 24.sp,)),
          Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouter.kNotificationsView);
          }, icon: Icon(Icons.notifications,size: 24.sp,)),
        ],
      ),
    );
  }
}

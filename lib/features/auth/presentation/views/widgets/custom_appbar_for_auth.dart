import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomAppbarForAuth extends StatelessWidget {
  const CustomAppbarForAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back_ios_sharp,
          size: 18.sp,
        ));
  }
}

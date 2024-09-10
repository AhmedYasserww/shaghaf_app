import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/styles.dart';
class BookingReviewAppBar extends StatelessWidget {
  const BookingReviewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(onPressed: (){
          GoRouter.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios_new),),
        SizedBox(width: 70.w,),
        Text("Booking Review",style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500),)
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/styles.dart';
class BookingHistortyCustomItem extends StatelessWidget {
  const BookingHistortyCustomItem({super.key, required this.icon, required this.text, required this.timeOrPrice});
  final IconData icon;
  final String text;
  final String timeOrPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 15.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon,color: kMostColorPicked,),
              SizedBox(height: 3.h,),
              Text(text,style: Styles.textStyle16,)
            ],
          ),
          Text(timeOrPrice,style: Styles.textStyle14.copyWith(color: Color(0xff4E4E4E)),)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_app_bar_title_and_arrow.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/functions/styles.dart';

class ContactUsBody extends StatelessWidget {
  const ContactUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0.h, horizontal: 24.w),
      child: Column(
        children: [
          const CustomAppBarTitleAndArrow(title: "Contact us"),
          SizedBox(
            height: 33.h,
          ),
          Row(
            children: [
              const Icon(
                Icons.phone,
                color: Color(0xff009688),
              ),
              SizedBox(
                width: 4.h,
              ),
              Text(
                "015557992",
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffDCDCDC),
          ),
          SizedBox(
            height: 32.h,
          ),
          Row(
            children: [
              const Icon(
                Icons.facebook,
                color: Color(0xff1877F2),
              ),
              SizedBox(
                width: 4.h,
              ),
              Text(
                "Shaghaf Co-working space",
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffDCDCDC),
          ),
          SizedBox(
            height: 32.h,
          ),
          Row(
            children: [
              const Icon(
                Icons.mail,
                color: kMostColorPicked,
              ),
              SizedBox(
                width: 4.h,
              ),
              Text(
                "shagaf@gmail.com",
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffDCDCDC),
          ),
          SizedBox(
            height: 32.h,
          ),
          Row(
            children: [
              const Icon(
                Icons.install_desktop,
                color: kMostColorPicked,
              ),
              SizedBox(
                width: 4.h,
              ),
              Text(
                "shagaf@gmail.com",
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffDCDCDC),
          ),
          SizedBox(
            height: 32.h,
          ),
          Row(
            children: [
              const Icon(
                Icons.snapchat_outlined,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 4.h,
              ),
              Text(
                "shagaf@gmail.com",
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffDCDCDC),
          ),
          SizedBox(
            height: 32.h,
          ),
          Row(
            children: [
              const Icon(
                Icons.tiktok,
                color: Colors.black,
              ),
              SizedBox(
                width: 4.h,
              ),
              Text(
                "shagaf@gmail.com",
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

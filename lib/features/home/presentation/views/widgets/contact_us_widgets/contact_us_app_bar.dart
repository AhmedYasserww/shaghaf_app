import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
class ContactUsAppBar extends StatelessWidget {
  const ContactUsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(child: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 24.sp)),
        SizedBox(width: 89.w,),
        Text("Contact Us", style: Styles.textStyle20),
      ],
    );
  }
}

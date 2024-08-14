import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';
class GmailField extends StatelessWidget {
  const GmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? _gmail;
    return SizedBox(
      height: 62.h,
      width: 323.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gmail",
            style: Styles.textStyle14,
          ),
          SizedBox(
            height: 5.h,
          ),
          CustomTextFormField(onSaved: (value){
            _gmail = value;
            print(_gmail);
          }, hintText: "Enter your gmail", icon: Icons.email, textInputType: TextInputType.emailAddress),

        ],
      ),
    );
  }
}

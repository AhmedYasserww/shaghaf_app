import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';

class ConfirmPasswordField extends StatelessWidget {
  const ConfirmPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? _confirmPassword;
    return SizedBox(
      height: 62.h,
      width: 323.w,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Confirm Password",
            style: Styles.textStyle14,
          ),
          SizedBox(
            height: 5.h,
          ),
          CustomTextFormField(onSaved: (value){
            _confirmPassword = value;
            print(_confirmPassword);
          }, hintText: "Confirm password", icon: Icons.lock, textInputType: TextInputType.visiblePassword),
        ],
      ),
    );
  }
}

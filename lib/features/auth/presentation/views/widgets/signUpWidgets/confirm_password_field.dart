import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';

class ConfirmPasswordField extends StatelessWidget {
  const ConfirmPasswordField({super.key, required this.onSaved});
  final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    String? confirmPassword;
    return Column(
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
          confirmPassword = value;
        }, hintText: "Confirm password", icon: Icons.lock, textInputType: TextInputType.visiblePassword),
      ],
    );
  }
}

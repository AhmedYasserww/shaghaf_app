import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key, required this.onSaved});

  final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    String? password;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: Styles.textStyle14,
        ),
        SizedBox(
          height: 5.h,
        ),
        CustomTextFormField(onSaved: onSaved,
            hintText: "Enter your password",
            icon: Icons.lock,
            textInputType: TextInputType.visiblePassword),
      ],
    );
  }
}

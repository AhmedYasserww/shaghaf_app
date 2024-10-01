import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/functions/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';

class GmailField extends StatelessWidget {
  final TextEditingController emailController;


  const GmailField({super.key, required this.emailController}); // Accept onSaved as a parameter


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Gmail",
          style: Styles.textStyle14,
        ),
        SizedBox(
          height: 5.h,
        ),
        CustomTextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Field is required';
            }
            final bool emailValid = RegExp(
              r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
            ).hasMatch(value);
            return emailValid ? null : 'Email format must be valid';
          },
          controller: emailController,
          hintText: "Enter your gmail",
          icon: Icons.email,
          textInputType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}

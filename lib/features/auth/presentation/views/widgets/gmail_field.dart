import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/functions/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';

class GmailField extends StatelessWidget {
  final void Function(String?) onSaved;

  const GmailField({super.key, required this.onSaved}); // Accept onSaved as a parameter


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
          onSaved: onSaved, // Pass the onSaved callback to the text form field
          hintText: "Enter your gmail",
          icon: Icons.email,
          textInputType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}

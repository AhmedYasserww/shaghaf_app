import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';
class PhoneField extends StatelessWidget {
  const PhoneField({super.key, required this.onSaved});
  final void Function(String?) onSaved;
  @override
  Widget build(BuildContext context) {
    String? phone;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone",
          style: Styles.textStyle14,
        ),
        SizedBox(
          height: 5.h,
        ),
        CustomTextFormField(
            onSaved: onSaved,
            hintText: "Enter your Phone",
            icon: Icons.phone,
            textInputType: TextInputType.number),
      ],
    );
  }
}

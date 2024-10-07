import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/functions/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';

class PhoneField extends StatelessWidget {
  final TextEditingController phoneController;

  const PhoneField({super.key, required this.phoneController});

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
            controller: phoneController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required. Please enter a phone number.';
              } else if (value.length != 11) {
                return 'Phone number must be exactly 11 digits long.';
              }
              return null;
            },
            hintText: "Enter your Phone",
            icon: Icons.phone,
            textInputType: TextInputType.number),
      ],
    );
  }
}

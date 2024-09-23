import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';
class UserNameField extends StatelessWidget {
  const UserNameField({super.key, required this.onSaved});
  final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    String? userName;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "User Name",
          style: Styles.textStyle14,
        ),
        SizedBox(
          height: 5.h,
        ),
        CustomTextFormField(onSaved: (value){
          userName = value;
        }, hintText: "Enter your name", icon: Icons.person, textInputType: TextInputType.name),

      ],
    );
  }
}

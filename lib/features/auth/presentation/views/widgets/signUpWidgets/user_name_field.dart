import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';
class UserNameField extends StatelessWidget {
  const UserNameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? _userName;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "User Name",
          style: Styles.textStyle14,
        ),
        SizedBox(
          height: 5.h,
        ),
        CustomTextFormField(onSaved: (value){
          _userName = value;
          print(_userName);
        }, hintText: "Enter your name", icon: Icons.person, textInputType: TextInputType.name),

      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/functions/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';

class UserNameField extends StatelessWidget {
  const UserNameField({super.key, required this.userNameController});
  final TextEditingController userNameController;

  // final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
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
        CustomTextFormField(
            controller: userNameController,
            validator: (value) =>
                value == null || value.isEmpty ? 'Field is required' : null,
            //onSaved: onSaved,
            hintText: "Enter your name",
            icon: Icons.person,
            textInputType: TextInputType.name),
      ],
    );
  }
}

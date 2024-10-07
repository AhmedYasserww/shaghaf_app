import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../constants.dart';
import '../../../../../../core/utils/functions/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';

class ConfirmPasswordField extends StatefulWidget {
  const ConfirmPasswordField({
    super.key,
    required this.confirmPasswordController,
    required this.passwordController,
  });
  final TextEditingController confirmPasswordController;
  final TextEditingController passwordController;

  @override
  State<ConfirmPasswordField> createState() => _ConfirmPasswordFieldState();
}

class _ConfirmPasswordFieldState extends State<ConfirmPasswordField> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
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
        CustomTextFormField(
            obscureText: visible,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Field is required';
              } else if (value != widget.passwordController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  visible = !visible;
                });
              },
              icon: Icon(
                visible ? Icons.visibility_off : Icons.visibility,
                color: kIconsColorForAuth,
              ),
            ),
            controller: widget.confirmPasswordController,
            hintText: "Confirm password",
            icon: Icons.lock,
            textInputType: TextInputType.visiblePassword),
      ],
    );
  }
}

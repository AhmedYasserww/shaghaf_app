import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpWidget extends StatelessWidget {
  const OtpWidget({super.key, required this.onSubmit});
  final void Function(String) onSubmit;
  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      margin: EdgeInsets.only(right: 12.w),
      numberOfFields: 6,
      cursorColor: Colors.red,
      enabledBorderColor: Colors.red,
      fieldWidth: 32.w,
      onSubmit: (String verificationCode) {
        onSubmit(verificationCode);
      },
    );
  }
}

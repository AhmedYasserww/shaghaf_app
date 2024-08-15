import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.onSaved, required this.hintText, required this.icon, required this.textInputType}) : super(key: key);
  final void Function(String?) onSaved;
  final String hintText;
  final IconData icon;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "message";
        }
      },
      onSaved: (value) {
        onSaved(value);
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: Styles.textStyle10,
        prefixIcon: Icon(
          icon,
          size: 16.sp,
          color: const Color(0xff969696),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
        constraints: BoxConstraints(
          maxWidth: 323.w,
          maxHeight: 35.h,
        ),
      ),
      keyboardType: textInputType,
    );

  }
}

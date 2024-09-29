import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.onSaved,
    required this.hintText,
    required this.icon,
    required this.textInputType,
  });

  final void Function(String?) onSaved;
  final String hintText;
  final IconData icon;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "Field cannot be empty"; // Show the error message if needed
        }
        return null;
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
          size: 12.25.sp,
          color: kIconsColorForAuth,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(.5),
            width: 1,
          ),
        ),
        errorStyle: const TextStyle(height: 0, fontSize: 0), // Hide error text height by default
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            width: 2.w,
            color: Colors.red,
          ), // Thicker red border on error
        ),
      ),
      keyboardType: textInputType,
    );
  }
}

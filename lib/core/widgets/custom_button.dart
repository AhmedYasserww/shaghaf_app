import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.borderRadius,
    required this.text,
    this.onPressed,
  });
  final String text;
  final BorderRadius? borderRadius;
  final  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 37,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xff20473E),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadius.circular(
                  10.r,
                ),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle12.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

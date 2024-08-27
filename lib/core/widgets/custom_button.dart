import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.borderRadius,
    required this.text,
    this.onPressed, this.color,  this.textStyle, this.height,
  });
  final String text;
  final BorderRadius? borderRadius;
  final  Function()? onPressed;
  final Color? color;
  final TextStyle? textStyle;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h ?? 37.h,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color ?? const Color(0xff20473E),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadius.circular(
                  10.r,
                ),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle ?? Styles.textStyle12.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

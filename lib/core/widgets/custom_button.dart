import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.borderRadius,
    required this.text,
    this.onPressed,
    this.color,
    this.textStyle,
    this.height,
    this.shadow = false, this.width, // Default to false
  });

  final String text;
  final BorderRadius? borderRadius;
  final Function()? onPressed;
  final Color? color;
  final TextStyle? textStyle;
  final double? height;
  final bool shadow;
  final double? width;// Changed to non-nullable, default is false

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h ?? 37.h,
      width: width != null ? width!.w : null, // Apply width only if it's not null
      child: Container(
        decoration: BoxDecoration(
          // Conditionally apply shadow if `shadow` is true
          boxShadow: shadow
              ? [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ]
              : [], // No shadow when `shadow` is false
          borderRadius: borderRadius ?? BorderRadius.circular(10.r),
        ),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: color ?? const Color(0xff20473E),
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(10.r),
            ),
          ),
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                text,
                style: textStyle ??
                    Styles.textStyle12.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
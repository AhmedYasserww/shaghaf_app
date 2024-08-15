import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class NextButton extends StatelessWidget {
  const NextButton({super.key,required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return    CircleAvatar(
        radius: 34,
        backgroundColor: const Color(0xff20473E),
        child: IconButton (onPressed:onPressed,
          icon: Icon(Icons.arrow_forward,size: 35.sp,color: Colors.white,),
        ));
  }
}

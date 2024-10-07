import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteContainer extends StatefulWidget {
  const FavouriteContainer({super.key});

  @override
  State<FavouriteContainer> createState() => _FavouriteContainerState();
}

class _FavouriteContainerState extends State<FavouriteContainer> {
  bool isfavourite = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isfavourite = !isfavourite;
        });
      },
      child: Container(
        width: 30.r,
        height: 30.r,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.5), shape: BoxShape.circle),
        child: Center(
            child: Icon(
          Icons.favorite,
          size: 24.sp,
          color: isfavourite ? const Color(0xffF04C29) : Colors.white,
        )),
      ),
    );
  }
}

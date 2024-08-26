import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_image.dart';

class HomeViewList extends StatelessWidget {
  const HomeViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 108.h,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Row(
            children: [
              CustomImage(
                  width: 243.w,
                  height: 108.h,
                  url: "assets/images/Rectangle 346.png"),
              SizedBox(
                width: 16.w,
              )
            ],
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_image.dart';

import '../../../../../../core/utils/assets.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      shape: const CircleBorder(),
      child: Container(
        width: 52.r,
        height: 52.r,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff20473E).withOpacity(.59),
          shape: BoxShape.circle,
        ),
        child: const CustomImage(width: 20, height: 40, url: "assets/images/LOGO FINAL 1.png")
      ),
    );
  }
}

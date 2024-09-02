import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/home/data/models/image_model.dart';
import 'custom_image.dart';
class CustomCarousel extends StatefulWidget {
  const CustomCarousel({super.key, required this.onIndexChanged, required this.height});
  final ValueChanged<int> onIndexChanged;
  final double height;
  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images.map((imagePath) {
        return CustomImage(
            width: MediaQuery.of(context).size.width,
            height: widget.height.h,
            url: imagePath);
      }).toList(),
      options: CarouselOptions(
        height: widget.height.h,
        autoPlay: false,
        enlargeCenterPage: true,
        viewportFraction: 1.0,
        onPageChanged: (index, reason) {
          setState(() {
            widget.onIndexChanged(index);
          });
        },
      ),
    );
  }
}

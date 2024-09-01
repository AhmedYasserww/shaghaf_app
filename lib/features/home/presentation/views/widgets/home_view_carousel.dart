import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_image.dart';
import 'package:shagaf/features/home/data/models/model.dart';

class HomeViewCarousel extends StatefulWidget {
  HomeViewCarousel({Key? key, required this.onIndexChanged}) : super(key: key);
  final ValueChanged<int> onIndexChanged;
  @override
  State<HomeViewCarousel> createState() => _HomeViewCarouselState();
}

class _HomeViewCarouselState extends State<HomeViewCarousel> {
  @override
  Widget build(BuildContext context) {

    return CarouselSlider(
      items: images.map((imagePath) {
        return CustomImage(
            width: MediaQuery.of(context).size.width,
            height: 300.h,
            url: imagePath);
      }).toList(),
      options: CarouselOptions(
        height: 300.h,
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

import 'package:flutter/material.dart';
class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.width, required this.height, required this.url});
  final double width;
  final double height;
   final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(url))
      ),
    );
  }
}

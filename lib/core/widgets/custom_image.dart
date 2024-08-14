import 'package:flutter/material.dart';
class CustomImage extends StatelessWidget {
  const CustomImage({Key? key, required this.width, required this.height, required this.url}) : super(key: key);
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

import 'package:flutter/material.dart';
import 'package:shagaf/core/widgets/custom_carousel.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_widgets/home_view_details.dart';

import '../../../../data/models/image_model.dart';
import 'home_view_carousel_details.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({Key? key}) : super(key: key);
  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              CustomCarousel(
                onIndexChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                }, height: 300,
              ),
              HomeViewCarouselDetails(
                currentIndex: _currentIndex,
                length: images.length,
              ),
            ],
          ),
          HomeViewDetails()
        ],
      ),
    );
  }
}
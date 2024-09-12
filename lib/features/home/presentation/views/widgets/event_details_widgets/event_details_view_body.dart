import 'package:flutter/material.dart';
import 'package:shagaf/features/home/presentation/views/widgets/event_details_widgets/custom_botton_section.dart';
import 'package:shagaf/features/home/presentation/views/widgets/event_details_widgets/event_details_view_details.dart';

import '../../../../../../core/widgets/custom_carousel.dart';
import '../../../../data/models/image_model.dart';
class EventDetailsViewBody extends StatefulWidget {
  const EventDetailsViewBody({super.key});

  @override
  State<EventDetailsViewBody> createState() => _EventDetailsViewBodyState();
}

class _EventDetailsViewBodyState extends State<EventDetailsViewBody> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomCarousel(
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            }, height: 454,
          ),
          EventDetailsViewDetails(currentIndex: _currentIndex, length: images.length,),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomButtonSection(),
          ),

        ],
      ),

    );
  }
}

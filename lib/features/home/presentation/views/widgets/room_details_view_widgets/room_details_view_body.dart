import 'package:flutter/material.dart';
import 'package:shagaf/core/widgets/custom_carousel.dart';
import 'package:shagaf/features/home/data/models/image_model.dart';
import 'package:shagaf/features/home/presentation/views/widgets/room_details_view_widgets/room_details_view_bottom_section.dart';
import 'package:shagaf/features/home/presentation/views/widgets/room_details_view_widgets/room_details_view_details.dart';
class RoomDetailsViewBody extends StatefulWidget {
  const RoomDetailsViewBody({super.key});

  @override
  State<RoomDetailsViewBody> createState() => _RoomDetailsViewBodyState();
}

class _RoomDetailsViewBodyState extends State<RoomDetailsViewBody> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomCarousel(
          onIndexChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          }, height: 454,
        ),
        RoomDetailsViewDetails(currentIndex: _currentIndex, length: images.length,),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: RoomDetailsViewBottomSection(),
        ),

      ],
    );
  }
}


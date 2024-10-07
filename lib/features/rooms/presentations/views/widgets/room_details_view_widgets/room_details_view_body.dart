import 'package:flutter/material.dart';
import 'package:shagaf/core/widgets/custom_carousel.dart';
import 'package:shagaf/features/home/data/models/image_model.dart';
import 'package:shagaf/features/rooms/data/models/room_model/room_model.dart';
import 'package:shagaf/features/rooms/presentations/views/widgets/room_details_view_widgets/room_details_view_bottom_section.dart';
import 'package:shagaf/features/rooms/presentations/views/widgets/room_details_view_widgets/room_details_view_details.dart';

class RoomDetailsViewBody extends StatefulWidget {
  const RoomDetailsViewBody({super.key, required this.roomModel});
final RoomModel roomModel;
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
          },
          height: 454,
        ),
        RoomDetailsViewDetails(
          currentIndex: _currentIndex,
          length: images.length, roomModel: widget.roomModel,
        ),
        const Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: RoomDetailsViewBottomSection(),
        ),
      ],
    );
  }
}

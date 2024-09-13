import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_indicator.dart';
import 'package:shagaf/features/home/presentation/views/widgets/location_container.dart';
import 'package:shagaf/features/rooms/presentations/views/widgets/room_details_view_widgets/room_details_view_app_bar.dart';
import 'package:shagaf/features/rooms/presentations/views/widgets/room_details_view_widgets/room_details_view_container.dart';
class RoomDetailsViewDetails extends StatelessWidget {
  const RoomDetailsViewDetails({super.key, required this.currentIndex, required this.length});
  final int currentIndex;
  final int length;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RoomDetailsViewAppBar(textAppbar: "Training room",),
          SizedBox(height: 190.h,),
          Padding(
            padding: EdgeInsets.only(left: 24.0.w),
            child: const LocationContainer(text: "Roxy"),
          ),
          Center(child: CustomIndicator(currentIndex: currentIndex, length: length, width: 10, height: 10)),
          SizedBox(height: 14.h,),
          const RoomDetailsViewContainer()
        ],
      ),
    );
  }
}

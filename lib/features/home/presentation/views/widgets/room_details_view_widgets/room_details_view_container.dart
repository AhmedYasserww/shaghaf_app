import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/room_details_view_widgets/room_details_view_container_details.dart';
class RoomDetailsViewContainer extends StatelessWidget {
  const RoomDetailsViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 697.h,
        width: 390.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(32.r),topRight: Radius.circular(32.r)),
          color: Colors.white
        ),
        child: RoomDetailsViewContainerDetails(),
      ),
    );
  }
}

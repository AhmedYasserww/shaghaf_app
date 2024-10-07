import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'event_details_view_container_details.dart';

class EventDetailsViewContainer extends StatelessWidget {
  const EventDetailsViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 390.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.r),
                topRight: Radius.circular(32.r)),
            color: Colors.white),
        child: const EventDetailsViewContainerDetails(),
      ),
    );
  }
}

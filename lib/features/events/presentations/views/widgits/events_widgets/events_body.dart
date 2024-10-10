import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_app_bar_with_two_icons.dart';
import 'package:shagaf/features/events/presentations/views/widgits/events_widgets/events_bloc_builder.dart';


class EventsBody extends StatelessWidget {
  const EventsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          const CustomAppBarWithTwoIcons(title: "Events"),
          SizedBox(
            height: 16.h,
          ),
          const Expanded(child: EventsBlocBuilder())
        ],
      ),
    );
  }
}

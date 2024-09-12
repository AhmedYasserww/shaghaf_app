import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/events_widgets/events_app_bar.dart';
import 'package:shagaf/features/home/presentation/views/widgets/events_widgets/events_gird_view.dart';
class EventsBody extends StatelessWidget {
  const EventsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 12.0.h,horizontal: 24.w),
      child: const Column(
        children: [
          EventsAppBar(),
          Expanded(child: EventsGirdView())
        ],
      ),
    );
  }
}

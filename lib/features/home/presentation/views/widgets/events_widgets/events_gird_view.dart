import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/events_widgets/events_item.dart';
class EventsGirdView extends StatelessWidget {
  const EventsGirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.w,
            mainAxisSpacing: 16.h
        ),
        itemCount: 10,
        itemBuilder: (context,index){
          return const EventsItem();
        });
  }
}

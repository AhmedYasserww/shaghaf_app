import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'events_item.dart';
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

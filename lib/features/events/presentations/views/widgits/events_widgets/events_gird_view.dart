import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/events/data/models/event_model.dart';

import 'events_item.dart';
class EventsGirdView extends StatelessWidget {
  const EventsGirdView({super.key, required this.eventModel});
final List<EventModel> eventModel;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.w,
            mainAxisSpacing: 16.h
        ),
        itemCount: eventModel.length,
        itemBuilder: (context,index){
          return  EventsItem(eventModel:eventModel[index],);
        });
  }
}

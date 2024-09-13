import 'package:flutter/material.dart';
import 'package:shagaf/features/events/presentations/views/widgits/events_widgets/events_body.dart';
class EventsView extends StatelessWidget {
  const EventsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: EventsBody()),
    );
  }
}

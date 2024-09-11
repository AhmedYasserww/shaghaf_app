import 'package:flutter/material.dart';
import 'package:shagaf/features/home/presentation/views/widgets/events_widgets/events_body.dart';
class EventsView extends StatelessWidget {
  const EventsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: EventsBody()),
    );
  }
}

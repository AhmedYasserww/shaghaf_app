import 'package:flutter/material.dart';
import 'package:shagaf/features/home/presentation/views/widgets/date_and_time_view_widgets/date_and_time_view_body.dart';
class DateAndTimeView extends StatelessWidget {
  const DateAndTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: DateAndTimeViewBody()),
    );
  }
}

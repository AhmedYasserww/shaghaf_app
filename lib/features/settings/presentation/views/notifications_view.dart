import 'package:flutter/material.dart';
import 'package:shagaf/features/settings/presentation/views/widgets/notifications_widgets/notifications_body.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: NotificationsBody()),
    );
  }
}

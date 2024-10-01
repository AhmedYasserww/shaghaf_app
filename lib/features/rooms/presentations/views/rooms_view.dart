import 'package:flutter/material.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'package:shagaf/features/rooms/presentations/views/widgets/rooms_widgets/rooms_body.dart';
class RoomsView extends StatelessWidget {
  const RoomsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: RoomsBody()),
    );
  }
}

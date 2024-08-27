import 'package:flutter/material.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/features/onboarding/presentation/views/widgets/boarding_view_body.dart';
class BoardingView extends StatelessWidget {
  const BoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kOnboardingBackGround,
      body: SafeArea(child: BoardingViewBody()),
    );
  }
}

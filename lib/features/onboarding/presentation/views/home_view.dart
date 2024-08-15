import 'package:flutter/material.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/features/onboarding/presentation/views/widgets/home_view_body.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOnboardingBackGround,

      body: HomeViewBody(),
    );
  }
}

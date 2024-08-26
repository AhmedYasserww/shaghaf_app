import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }
  navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3), () {}); // Adjust the duration as needed
    GoRouter.of(context).push(AppRouter.kBoardingView);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          "assets/images/splash_screen.jpg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

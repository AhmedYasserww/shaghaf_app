import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/features/onboarding/presentation/views/widgets/home_view_body.dart';

import '../../../../core/utils/app_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initState() {
    super.initState();
    navigateToHome();
  }
  navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {}); // Adjust the duration as needed
    GoRouter.of(context).push(AppRouter.kHomeView);
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

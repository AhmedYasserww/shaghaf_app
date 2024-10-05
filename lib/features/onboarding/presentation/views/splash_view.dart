import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import shared_preferences

import '../../../../core/utils/functions/app_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigateBasedOnToken(); // Start checking for the token
  }

  // Function to check if token exists and navigate accordingly
  Future<void> navigateBasedOnToken() async {
    await Future.delayed(const Duration(seconds: 3)); // Delay to display splash screen

    // Obtain shared preferences instance
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? token = prefs.getString('auth_token');
    if (token != null && token.isNotEmpty) {
      GoRouter.of(context).go(AppRouter.kHomeView);
    } else {
      GoRouter.of(context).go(AppRouter.kBoardingView);
    }
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

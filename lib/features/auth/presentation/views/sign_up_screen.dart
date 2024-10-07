import 'package:flutter/material.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/signUpWidgets/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SignUpBody()),
    );
  }
}

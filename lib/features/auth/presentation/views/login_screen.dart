import 'package:flutter/material.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/loginWidgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: LoginBody()),
    );
  }
}

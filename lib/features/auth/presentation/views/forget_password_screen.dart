import 'package:flutter/material.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/forgetPasswordWidgets/forget_password_body.dart';
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ForgetPasswordBody()),
    );
  }
}

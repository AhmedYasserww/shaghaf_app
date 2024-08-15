import 'package:flutter/material.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/verificationWidgets/verification_body.dart';
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: VerificationBody()),
    );
  }
}

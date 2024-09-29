import 'package:flutter/material.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/verificationWidgets/verification_body.dart';
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key, required this.email});
  final String email;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: VerificationBody(email: email,)),
    );
  }
}

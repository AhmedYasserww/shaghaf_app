import 'package:flutter/material.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/verificationWidgets/verification_body.dart';
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key, required this.email, required this.title});
  final String email;
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: VerificationBody(email: email, title: title,)),
    );
  }
}

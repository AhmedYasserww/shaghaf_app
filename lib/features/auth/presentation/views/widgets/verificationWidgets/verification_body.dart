import 'package:flutter/material.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/auth_body.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/verificationWidgets/verification_details.dart';
class VerificationBody extends StatelessWidget {
  const VerificationBody({super.key, required this.email, required this.title});
  final String email;
  final String title;
  @override
  Widget build(BuildContext context) {
    return AuthBody(ContainerDetails: VerificationDetails(email: email, title: title), paddingFromBottom: 49);
  }
}

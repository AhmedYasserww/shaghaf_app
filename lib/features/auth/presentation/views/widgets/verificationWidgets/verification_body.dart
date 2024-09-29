import 'package:flutter/material.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/auth_body.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/verificationWidgets/verification_details.dart';
class VerificationBody extends StatelessWidget {
  const VerificationBody({super.key, required this.email});
  final String email;
  @override
  Widget build(BuildContext context) {
    return AuthBody(ContainerDetails: VerificationDetails(email: email,), paddingFromBottom: 49);
  }
}

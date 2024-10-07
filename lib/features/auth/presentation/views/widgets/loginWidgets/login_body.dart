import 'package:flutter/material.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/auth_body.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/loginWidgets/login_details.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthBody(
      ContainerDetails: LoginDetails(),
      paddingFromBottom: 29,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/loginWidgets/login_body.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}

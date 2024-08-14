import 'package:flutter/material.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/forgetPasswordWidgets/forget_password_body.dart';
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ForgetPasswordBody(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/forgetPasswordWidgets/forget_password_details.dart';

import '../auth_body.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthBody(
      ContainerDetails: ForgetPasswordDetails(),
      paddingFromBottom: 35,
    );
  }
}

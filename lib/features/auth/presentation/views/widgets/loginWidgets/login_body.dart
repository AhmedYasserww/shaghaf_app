import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/assets.dart';
import 'package:shagaf/core/widgets/custom_image.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/auth_body.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/custom_appbar_for_auth.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/loginWidgets/login_details.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthBody(ContainerDetails: LoginDetails(), paddingFromBottom: 29,);
  }
}

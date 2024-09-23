import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shagaf/core/utils/api_serivce.dart';
import 'package:shagaf/features/auth/data/repos/auth_repo/auth_repo.dart';
import 'package:shagaf/features/auth/presentation/manager/sign_up/sign_up_cubit.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/loginWidgets/login_body.dart';

import '../../data/repos/auth_repo/auth_repo_impl.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(child: LoginBody()),
    );
  }
}

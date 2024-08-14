import 'package:go_router/go_router.dart';
import 'package:shagaf/features/auth/presentation/views/forget_password_screen.dart';
import 'package:shagaf/features/auth/presentation/views/login_screen.dart';
import 'package:shagaf/features/auth/presentation/views/sign_up_screen.dart';
import 'package:shagaf/features/auth/presentation/views/verification_screen.dart';

import '../../features/onboarding/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSignUp = '/signUp';
  static const kLogin = '/login';
  static const kForgetPassword = '/forgetPassword';
  static const kVerification= '/verification';
  static final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: kSignUp,
          builder: (context, state) => const SignUpScreen(),
        ),
        GoRoute(
          path: kLogin,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: kForgetPassword,
          builder: (context, state) => const ForgetPasswordScreen(),
        ),
        GoRoute(
          path: kVerification,
          builder: (context, state) => const VerificationScreen(),
        ),
      ]);
}
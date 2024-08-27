import 'package:go_router/go_router.dart';
import 'package:shagaf/features/auth/presentation/views/forget_password_screen.dart';
import 'package:shagaf/features/auth/presentation/views/login_screen.dart';
import 'package:shagaf/features/auth/presentation/views/sign_up_screen.dart';
import 'package:shagaf/features/auth/presentation/views/verification_screen.dart';
import 'package:shagaf/features/home/presentation/views/home_view.dart';
import 'package:shagaf/features/onboarding/presentation/views/boarding_view.dart';
import 'package:shagaf/features/onboarding/presentation/views/splash_view.dart';


abstract class AppRouter {
  static const kSignUp = '/signUp';
  static const kLogin = '/login';
  static const kSplashScreen = '/splashScreen';
  static const kHomeView = '/homeView';
  static const kBoardingView = '/boardingView';
  static const kForgetPassword = '/forgetPassword';
  static const kVerification= '/verification';


  static final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashView()
        ),
        GoRoute(
            path:kBoardingView,
            builder: (context, state) => const BoardingView()
        ),
        GoRoute(
          path: kLogin,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: kSignUp,
          builder: (context, state) => const SignUpScreen(),
        ),
        GoRoute(
          path: kForgetPassword,
          builder: (context, state) => const ForgetPasswordScreen(),
        ),
        GoRoute(
          path: kVerification,
          builder: (context, state) => const VerificationScreen(),
        ),
        GoRoute(
            path:kHomeView,
            builder: (context, state) => const HomeView()
        ),
      ]);
}
import 'package:go_router/go_router.dart';
import 'package:shagaf/features/auth/presentation/views/login_screen.dart';
import 'package:shagaf/features/auth/presentation/views/sign_up_screen.dart';
import 'package:shagaf/features/onboarding/presentation/views/home_view.dart';


abstract class AppRouter {
  static const kSignUp = '/signUp';
  static const kLogin = '/login';
  static const kSplashScreen = '/splashScreen';
  static const kHomeView = '/homeView';
  static const kForgetPassword = '/forgetPassword';
  static const kVerification= '/verification';


  static final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashView()
        ),
        GoRoute(
            path:kHomeView,
            builder: (context, state) => const HomeView()
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
          path: kLogin,
          builder: (context, state) => const LoginScreen(),
        ),
      ]);
}
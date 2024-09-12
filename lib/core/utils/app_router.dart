import 'package:go_router/go_router.dart';
import 'package:shagaf/features/auth/presentation/views/forget_password_screen.dart';
import 'package:shagaf/features/auth/presentation/views/login_screen.dart';
import 'package:shagaf/features/auth/presentation/views/sign_up_screen.dart';
import 'package:shagaf/features/auth/presentation/views/verification_screen.dart';
import 'package:shagaf/features/home/presentation/views/booking_review_view.dart';
import 'package:shagaf/features/home/presentation/views/category_details_view.dart';
import 'package:shagaf/features/home/presentation/views/contact_us_view.dart';
import 'package:shagaf/features/home/presentation/views/date_and_time_view.dart';
import 'package:shagaf/features/home/presentation/views/events_view.dart';
import 'package:shagaf/features/home/presentation/views/home_view.dart';
import 'package:shagaf/features/home/presentation/views/room_details_view.dart';
import 'package:shagaf/features/onboarding/presentation/views/boarding_view.dart';

import '../../features/home/presentation/views/event_details_view.dart';
import '../../features/onboarding/presentation/views/splash_view.dart';


abstract class AppRouter {
  static const kSignUp = '/signUp';
  static const kLogin = '/login';
  static const kSplashScreen = '/splashScreen';
  static const kHomeView = '/homeView';
  static const kBoardingView = '/boardingView';
  static const kForgetPassword = '/forgetPassword';
  static const kVerification= '/verification';
  static const kCategoryDetailsView = '/categoryDetailsView';
  static const kRoomDetailsView = '/roomDetailsView';
  static const kDateAndTimeView = '/dateAndTimeView';
  static const kBookingReviewView = '/bookingReviewView';
  static const kEventsView = '/eventsView';
  static const kContactUsView = '/contactUsView';
  static const kEventDetailsView = '/eventDetailsView';


  static final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeView()
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
        GoRoute(
            path:kCategoryDetailsView,
            builder: (context, state) => const CategoryDetailsView()
        ),
        GoRoute(
            path:kRoomDetailsView,
            builder: (context, state) => const RoomDetailsView()
        ),
        GoRoute(
            path:kDateAndTimeView,
            builder: (context, state) => const DateAndTimeView()
        ),
        GoRoute(
            path: kBookingReviewView,
            builder: (context, state) => const BookingReviewView()
        ),
        GoRoute(
            path: kEventsView,
            builder: (context, state) => const EventsView()
        ),
        GoRoute(
            path: kContactUsView,
            builder: (context, state) => const ContactUsView()
        ),
        GoRoute(
            path: kEventDetailsView,
            builder: (context, state) => const EventDetailsView()
        ),
      ]);
}
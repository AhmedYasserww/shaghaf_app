import 'package:go_router/go_router.dart';
import 'package:shagaf/features/auth/presentation/views/forget_password_screen.dart';
import 'package:shagaf/features/auth/presentation/views/login_screen.dart';
import 'package:shagaf/features/auth/presentation/views/sign_up_screen.dart';
import 'package:shagaf/features/auth/presentation/views/verification_screen.dart';
import 'package:shagaf/features/booking/presentation/views/booking_review_view.dart';
import 'package:shagaf/features/home/presentation/views/photo_session_view.dart';
import 'package:shagaf/features/rooms/presentations/views/rooms_view.dart';
import 'package:shagaf/features/settings/presentation/views/contact_us_view.dart';
import 'package:shagaf/features/home/presentation/views/date_and_time_view.dart';
import 'package:shagaf/features/events/presentations/views/events_view.dart';
import 'package:shagaf/features/home/presentation/views/home_view.dart';
import 'package:shagaf/features/home/presentation/views/member_ship_view.dart';
import 'package:shagaf/features/settings/presentation/views/notifications_view.dart';
import 'package:shagaf/features/rooms/presentations/views/room_details_view.dart';
import 'package:shagaf/features/onboarding/presentation/views/boarding_view.dart';
import 'package:shagaf/features/onboarding/presentation/views/splash_view.dart';
import 'package:shagaf/features/settings/presentation/views/profile_view.dart';
import '../../../features/events/presentations/views/event_details_view.dart';
import '../../../features/home/presentation/views/birthday_view.dart';

abstract class AppRouter {
  static const kSignUp = '/signUp';
  static const kLogin = '/login';
  static const kSplashScreen = '/splashScreen';
  static const kHomeView = '/homeView';
  static const kBoardingView = '/boardingView';
  static const kForgetPassword = '/forgetPassword';
  static const kVerification = '/verification';
  static const kCategoryDetailsView = '/categoryDetailsView';
  static const kRoomDetailsView = '/roomDetailsView';
  static const kDateAndTimeView = '/dateAndTimeView';
  static const kBookingReviewView = '/bookingReviewView';
  static const kEventsView = '/eventsView';
  static const kContactUsView = '/contactUsView';
  static const kEventDetailsView = '/eventDetailsView';
  static const kMemberShipView = '/memberShipView';
  static const kNotificationsView = '/notificationsView';
  static const kBirthDayView = '/birthdayView';
  static const kPhotoSessionView = '/photoSessionView';
  static const kNotificationView = '/notificationView';
  static const kProfileView = '/profileView';

  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const LoginScreen()),
    GoRoute(
        path: kBoardingView, builder: (context, state) => const BoardingView()),
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
      path: AppRouter.kVerification,
      builder: (context, state) {
        final extraData = state.extra as Map<String, dynamic>; // Cast extra to a Map
        final email = extraData['email'] as String;
        final title = extraData['title'] as String;
        return VerificationScreen(
          email: email,
          title: title,
        );
      },
    ),

    GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
    GoRoute(
        path: kCategoryDetailsView,
        builder: (context, state) => const RoomsView()),
    GoRoute(
        path: kRoomDetailsView,
        builder: (context, state) => const RoomDetailsView()),
    GoRoute(
        path: kDateAndTimeView,
        builder: (context, state) => const DateAndTimeView()),
    GoRoute(
        path: kBookingReviewView,
        builder: (context, state) => const BookingReviewView()),
    GoRoute(path: kEventsView, builder: (context, state) => const EventsView()),
    GoRoute(
        path: kContactUsView,
        builder: (context, state) => const ContactUsView()),
    GoRoute(
        path: kEventDetailsView,
        builder: (context, state) => const EventDetailsView()),
    GoRoute(
        path: kMemberShipView,
        builder: (context, state) => const MemberShipView()),
    GoRoute(
        path: kNotificationsView,
        builder: (context, state) => const NotificationsView()),
    GoRoute(
        path: kBirthDayView, builder: (context, state) => const BirthdayView()),
    GoRoute(
        path: kPhotoSessionView,
        builder: (context, state) => const PhotoSessionView()),
    GoRoute(
        path: kNotificationsView,
        builder: (context, state) => const NotificationsView()),
    GoRoute(
        path: kProfileView, builder: (context, state) => const ProfileView()),
  ]);
}

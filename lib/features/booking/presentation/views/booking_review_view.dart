import 'package:flutter/material.dart';
import 'package:shagaf/features/booking/presentation/views/widgets/booking_review_widgets/booking_review_body.dart';

class BookingReviewView extends StatelessWidget {
  const BookingReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookingReviewBody()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shagaf/features/booking/presentation/views/widgets/booking_review_widgets/booking_review_body.dart';

class BookingReviewView extends StatelessWidget {
  const BookingReviewView({super.key, required this.numberOfSeats, required this.selectedFromTime, required this.selectedToTime});
  final int numberOfSeats;
  final DateTime selectedFromTime;
  final DateTime selectedToTime;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookingReviewBody(numberOfSeats: numberOfSeats, selectedFromTime: selectedFromTime, selectedToTime: selectedToTime)),
    );
  }
}

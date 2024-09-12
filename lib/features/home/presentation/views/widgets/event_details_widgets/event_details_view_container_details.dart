import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/event_details_widgets/custom_dotted_line.dart';
import '../../../../../../core/utils/styles.dart';
class EventDetailsViewContainerDetails extends StatelessWidget {
  const EventDetailsViewContainerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 24,left: 25),
            child: Text("Details",style: Styles.textStyle16.copyWith(color: const Color(0xffF04C29)),)),
         SizedBox(height: 19.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:47 ),
              child: Column(
                children: [
                  buildTimelineDot(),
                  buildDottedLine(),
                  buildTimelineDot(),
                  buildDottedLine(),
                  buildTimelineDot(),
                  buildDottedLine(),
                  buildTimelineDot(),
                  buildDottedLine(),
                  buildTimelineDot(),
                ],
              ),
            ),
             SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildDetailsText(
                      "We will learn how to make ceramics and use them after that"),
                  buildDetailsText(
                      "The workshop will last for one day and last 3 hours. We will learn about it"),
                  buildDetailsText(
                      "We will learn about the types of clay to differentiate the final result of the product"),
                  buildDetailsText(
                      "How do I make shapes with clay without them cracking?"),
                  buildDetailsText(
                      "We will burn the shapes we made and find out how they burn so that you can use them after that and live with you"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

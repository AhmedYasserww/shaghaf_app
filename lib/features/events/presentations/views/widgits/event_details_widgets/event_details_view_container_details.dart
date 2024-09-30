import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/widgets/custom_dotted_line.dart';
import '../../../../../../core/utils/functions/styles.dart';
class EventDetailsViewContainerDetails extends StatelessWidget {
  const EventDetailsViewContainerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(top: 24.h,left: 25.w),
            child: Text("Details",style: Styles.textStyle16.copyWith(color: kMostColorPicked,fontWeight: FontWeight.w600),)),
         SizedBox(height: 16.h),
        Padding(
          padding:  EdgeInsets.only(left:42.w , right: 24.w ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  buildTimelineDot(),
                  buildDottedLine(lineLength: 57.h),
                  buildTimelineDot(),
                  buildDottedLine(lineLength: 56.h),
                  buildTimelineDot(),
                  buildDottedLine(lineLength: 56.h),
                  buildTimelineDot(),
                  buildDottedLine(lineLength: 62.h),
                  buildTimelineDot(),
                ],
              ),
               SizedBox(width: 7.w),
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
        ),
      ],
    );
  }
}

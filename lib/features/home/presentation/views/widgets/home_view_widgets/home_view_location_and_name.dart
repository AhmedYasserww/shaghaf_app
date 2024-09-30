import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'package:shagaf/core/widgets/rating_container.dart';
import 'package:shagaf/features/home/presentation/views/widgets/location_container.dart';

class HomeViewLocationAndName extends StatelessWidget {
  const HomeViewLocationAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const LocationContainer(text: "Location"),
          SizedBox(height: 20.h), // Adjust the height here
          Row(
            children: [
              Text(
                "Delightful open air",
                style: Styles.textStyle20.copyWith(color: Colors.white),
              ),
              const Spacer(),
              RatingContainer(rating: 4.7,),
            ],
          ),
        ],
      ),
    );
  }
}

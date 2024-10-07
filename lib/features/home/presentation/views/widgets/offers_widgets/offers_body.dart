import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_app_bar_with_two_icons.dart';
import 'package:shagaf/features/home/presentation/views/widgets/offers_widgets/offers_grid_view.dart';

class OffersBody extends StatelessWidget {
  const OffersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            const CustomAppBarWithTwoIcons(title: "Offers"),
            SizedBox(
              height: 16.h,
            ),
            const Expanded(child: OffersGridView())
          ],
        ),
      ),
    );
  }
}

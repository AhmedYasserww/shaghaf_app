import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/offers_widgets/offers_app_bar.dart';
import 'package:shagaf/features/home/presentation/views/widgets/offers_widgets/offers_grid_view.dart';
class OffersBody extends StatelessWidget {
  const OffersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 12.h),
        child: const Column(
          children: [
            OffersAppBar(),
            Expanded(child: OffersGridView())
          ],
        ),
      ),
    );
  }
}

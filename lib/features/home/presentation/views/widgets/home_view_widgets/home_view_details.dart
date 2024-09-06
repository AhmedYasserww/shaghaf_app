import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_widgets/home_view_clip_pathes.dart';

import '../../../../../../core/utils/styles.dart';
import 'home_view_advertisments_list.dart';
import 'home_view_row_buttons.dart';

class HomeViewDetails extends StatelessWidget {
  const HomeViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Advertisement",
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 12.h,
          ),
          const HomeViewAdvertismentsList(),
          SizedBox(
            height: 24.h,
          ),
          const HomeViewRowButtons(),
          SizedBox(
            height: 24.h,
          ),
          Text(
            "Categories",
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 12.h,
          ),
          const HomeViewClipPathes(),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}


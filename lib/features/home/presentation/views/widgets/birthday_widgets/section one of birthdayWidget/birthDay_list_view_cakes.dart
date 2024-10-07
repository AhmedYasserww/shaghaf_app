import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'birthday_item_of_cakes.dart';

class BirthDayListViewCakes extends StatelessWidget {
  final Function(bool) onItemSelected;

  const BirthDayListViewCakes({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 3,
      itemBuilder: (context, i) {
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: BirthDayItemCakes(onItemSelected: onItemSelected),
        );
      },
    );
  }
}

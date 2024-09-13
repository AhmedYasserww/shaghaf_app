import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/features/home/presentation/views/widgets/birthday_widgets/custom_botton_of_birthday.dart';
import 'package:shagaf/features/home/presentation/views/widgets/birthday_widgets/section%20one%20of%20birthdayWidget/birthDay_list_view_cakes.dart';
import 'package:shagaf/features/home/presentation/views/widgets/birthday_widgets/section%20two%20of%20birthday%20widget/birthday_list_view_decoration.dart';

import 'custom_app_bar_for_birthday_view.dart';
import 'header_of_birthday_view.dart';

class BirthdayViewBody extends StatefulWidget {
  const BirthdayViewBody({super.key});

  @override
  State<BirthdayViewBody> createState() => _BirthdayViewBodyState();
}

class _BirthdayViewBodyState extends State<BirthdayViewBody> {
  bool isItemSelected = false;

  void updateItemSelected(bool isSelected) {
    setState(() {
      isItemSelected = isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            const SafeArea(child: CustomAppBarForBirthDayView()),
            SizedBox(height: 24.h),
            const HeaderOfBirthDayView(),
            SizedBox(height: 24.h),
            Text(
              "Cakes",
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 4.h),

            BirthDayListViewCakes(onItemSelected: updateItemSelected),

            SizedBox(height: 20.h),
            Text(
              "Decoration",
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
            ),

           BirthDayListViewDecorations(onItemSelected: updateItemSelected),

            const SizedBox(height: 20),

            isItemSelected? CustomButtonOfBirthDayView():Text(""),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

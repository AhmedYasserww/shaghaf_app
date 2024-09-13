import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/birthday_widgets/custom_app_bar_for%20birthday%20view.dart';

import '../../../../../../core/widgets/custom_dotted_line.dart';
import '../membership_view_widgets/custom_app_bar_for_member_ship.dart';
import 'header_of_birthDay_view.dart';
class BirthdayViewBody extends StatelessWidget {
  const BirthdayViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height:16.h ,),
          const SafeArea(child: CustomAppBarForBirthDayView()),
          SizedBox(height: 24.h,),
          const HeaderOfBirthDayView()
          

        ],
      ),
    );
  }
}

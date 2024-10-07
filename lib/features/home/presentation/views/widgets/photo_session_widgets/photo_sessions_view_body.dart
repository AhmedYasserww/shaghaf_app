import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/photo_session_widgets/photo_session_list_view.dart';

import '../../../../../../core/widgets/custom_app_bar_title_and_arrow.dart';
import '../birthday_widgets/custom_botton_of_birthDay.dart';

class PhotoSessionsViewBody extends StatefulWidget {
  const PhotoSessionsViewBody({super.key});

  @override
  State<PhotoSessionsViewBody> createState() => _PhotoSessionsViewBodyState();
}

class _PhotoSessionsViewBodyState extends State<PhotoSessionsViewBody> {
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 16.h),
              const SafeArea(
                  child: CustomAppBarTitleAndArrow(title: "Photo Session")),
              SizedBox(height: 24.h),
              PhotoSessionListView(
                onItemSelected: updateItemSelected,
              ),
              const Spacer(),
              isItemSelected
                  ? const CustomButtonOfBirthDayView(
                      price: "EGP 500.0",
                    )
                  : const Text(""),
              const SizedBox(height: 20),
              SizedBox(height: 24.h),
            ])));
  }
}

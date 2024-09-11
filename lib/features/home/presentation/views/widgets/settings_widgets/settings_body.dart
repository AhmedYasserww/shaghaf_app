import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/settings_widgets/settings_app_bar.dart';
import 'package:shagaf/features/home/presentation/views/widgets/settings_widgets/settings_details.dart';
class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.only(left: 24.5.w,right: 24.5.w,top: 16.h),
        child: Column(
          children: [
            const SettingsAppBar(),
            SizedBox(height: 32.h,),
            const SettingsDetails()
          ],
        ),
      ),
    );
  }
}

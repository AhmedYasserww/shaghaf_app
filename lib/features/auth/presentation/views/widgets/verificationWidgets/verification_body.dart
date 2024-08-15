import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/assets.dart';
import 'package:shagaf/core/widgets/custom_image.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/custom_appbar_for_auth.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/verificationWidgets/verification_details.dart';
class VerificationBody extends StatelessWidget {
  const VerificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 60.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppbarForAuth(),
            SizedBox(height: 36.h,),
            const Center(child: CustomImage(width: 140, height: 235.25, url: AssetsData.logo)),
            SizedBox(height: 32.75.h,),
            Center(child: VerificationDetails()),
          ],
        ),
      ),
    );
  }
}

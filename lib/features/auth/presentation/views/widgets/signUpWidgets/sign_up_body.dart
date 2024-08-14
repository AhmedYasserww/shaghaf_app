import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/custom_appbar_for_auth.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/signUpWidgets/sign_up_details.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/widgets/custom_image.dart';
class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.only(top: 60.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppbarForAuth(),
            SizedBox(height: 36.h,),
            Center(child: CustomImage(width: 140.w, height: 235.25.h, url: AssetsData.logo)),
            SizedBox(height: 32.75.h,),
            Center(child: SignUpDetails()),
            SizedBox(height: 20,),


          ],
        ),
      ),
    );
  }
}

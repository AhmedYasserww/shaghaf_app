import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/assets.dart';
import 'package:shagaf/core/widgets/custom_image.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/custom_appbar_for_auth.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/loginWidgets/login_details.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppbarForAuth(),
          SizedBox(height: 36.h,),
          Center(child: CustomImage(width: 140.w, height: 235.25.h, url: AssetsData.logo)),
          SizedBox(height: 32.75.h,),
          Center(child: LoginDetails()),
          SizedBox(
            height: 156.h,
          ),
        ],
      ),
    );
  }
}

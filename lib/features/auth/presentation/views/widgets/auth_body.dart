import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/functions/assets.dart';
import '../../../../../core/widgets/custom_image.dart';
import 'custom_appbar_for_auth.dart';
class AuthBody extends StatelessWidget {
  const AuthBody({super.key, required this.ContainerDetails, required this.paddingFromBottom});
  final Widget ContainerDetails;
  final double paddingFromBottom;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 16.h,left: 24.w,right: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppbarForAuth(),
            SizedBox(height: 36.h,),
            const Center(child: CustomImage(width: 140, height: 235.25, url: AssetsData.logo)),
            SizedBox(height: 32.75.h,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: kContainerColorForAuth,
                  border: Border.all(color: Colors.white,width: 2)
              ),
              child: Padding(
                  padding: EdgeInsets.only(left: 9.w, top: 15.h, right: 10.w,bottom: paddingFromBottom.h),
                  child: ContainerDetails
              ),
            )
          ],
        ),
      ),
    );
  }
}

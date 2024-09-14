import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/app_router.dart';

import '../../../../../../core/utils/styles.dart';

class SettingsDetails extends StatelessWidget {
  const SettingsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            GoRouter.of(context).push(AppRouter.kProfileView);
          },
          child: Row(
            children: [
              const Icon(
                Icons.people_alt_rounded,
                color: kMostColorPicked,
              ),
              SizedBox(
                width: 4.h,
              ),
              Text(
                "Profile",
                style:
                    Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const Divider(thickness: 1,color: Color(0xffDCDCDC),),
        SizedBox(height: 24.h,),
        Row(
          children: [
            const Icon(
              Icons.sailing_rounded,
              color: kMostColorPicked,
            ),
            SizedBox(
              width: 4.h,
            ),
            Text(
              "English",
              style:
              Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_downward_rounded,
              color: kMostColorPicked,
            ),
          ],
        ),
        const Divider(thickness: 1,color: Color(0xffDCDCDC),),
        SizedBox(height: 24.h,),
        InkWell(
          onTap: (){
            GoRouter.of(context).push(AppRouter.kNotificationsView);
          },
          child: Row(
            children: [
              const Icon(
                Icons.notification_add_outlined,
                color: kMostColorPicked,
              ),
              SizedBox(
                width: 4.h,
              ),
              Text(
                "Notifications",
                style:
                Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const Divider(thickness: 1,color: Color(0xffDCDCDC),),
        SizedBox(height: 24.h,),
        InkWell(
          onTap: (){
            GoRouter.of(context).push(AppRouter.kContactUsView);
          },
          child: Row(
            children: [
              const Icon(
                Icons.contact_support_outlined,
                color: kMostColorPicked,
              ),
              SizedBox(
                width: 4.h,
              ),
              Text(
                "Contact Us",
                style:
                Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const Divider(thickness: 1,color: Color(0xffDCDCDC),),
        SizedBox(height: 24.h,),
        Row(
          children: [
            const Icon(
              Icons.signal_cellular_alt_2_bar_outlined,
              color: kMostColorPicked,
            ),
            SizedBox(
              width: 4.h,
            ),
            Text(
              "About Us",
              style:
              Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const Divider(thickness: 1,color: Color(0xffDCDCDC),)
      ],
    );
  }

}

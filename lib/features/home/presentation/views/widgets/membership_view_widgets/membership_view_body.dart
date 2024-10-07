import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/features/home/presentation/views/widgets/membership_view_widgets/membership_check.dart';
import 'package:shagaf/features/home/presentation/views/widgets/membership_view_widgets/membership_view_details_box.dart';
import 'custom_app_bar_for_member_ship.dart';

class MembershipViewBody extends StatefulWidget {
  const MembershipViewBody({super.key});

  @override
  State<MembershipViewBody> createState() => _MembershipViewBodyState();
}

class _MembershipViewBodyState extends State<MembershipViewBody> {
  bool isSelectedMonth = false;
  bool isSelectedDays = false;

  void toggleMonthSelection() {
    setState(() {
      isSelectedMonth = !isSelectedMonth;
      if (isSelectedMonth) {
        isSelectedDays = false; // Ensure only one is selected
      }
    });
  }

  void toggleWeekSelection() {
    setState(() {
      isSelectedDays = !isSelectedDays;
      if (isSelectedDays) {
        isSelectedMonth = false; // Ensure only one is selected
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16.h,
        ),
        const CustomAppBarForMemberShip(),
        MembershipCheck(
          isSelected: isSelectedMonth,
          onToggle: toggleMonthSelection,
          text: "A Month",
        ),
        SizedBox(
          height: 4.h,
        ),
        const MembershipViewDetailsBox(
            price: "1250 LE for one person",
            description1:
                "included daily drink and movie night for you and your friends",
            description2:
                "4 invitations for your friends spend a day in Shagaf included drink"),
        MembershipCheck(
          isSelected: isSelectedDays,
          onToggle: toggleWeekSelection,
          text: "15 Separate days",
        ),
        SizedBox(
          height: 8.h,
        ),
        const MembershipViewDetailsBox(
            price: "750 LE for one person",
            description1:
                "One invitation for your friends spend a day in Shagaf included drink"),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            children: [
              Expanded(
                  child: CustomButton(
                text: "Next",
                height: 40.h,
                borderRadius: BorderRadius.circular(12.r),
                textStyle: Styles.textStyle16
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
              )),
            ],
          ),
        ),
        SizedBox(
          height: 32.h,
        )
      ],
    );
  }
}

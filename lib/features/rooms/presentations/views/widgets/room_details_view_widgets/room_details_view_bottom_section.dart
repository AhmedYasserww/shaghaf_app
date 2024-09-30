import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'select_plan_bottom_sheet.dart'; // Import the SelectPlanBottomSheet widget

class RoomDetailsViewBottomSection extends StatelessWidget {
  const RoomDetailsViewBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      padding: EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 33.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, -2),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '100.0 EGP/Day',
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w700,
                  color: kMostColorPicked,
                ),
              ),
              SizedBox(width: 12.w),
              const Icon(
                Icons.arrow_drop_down_outlined,
                color: kMostColorPicked,
              ),
            ],
          ),
          // Select Date Button
          ElevatedButton(
            onPressed: () {
              _showSelectPlanBottomSheet(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kMostColorPicked,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Center(
              child: Text(
                'Select Date',
                style: Styles.textStyle16.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showSelectPlanBottomSheet(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return SelectPlanBottomSheet(
          selectedPlan: null, // Set initial selected plan or handle state management as needed
          onPlanSelected: (value) {
            // Handle plan selection
          },
        );
      },
    );
  }
}

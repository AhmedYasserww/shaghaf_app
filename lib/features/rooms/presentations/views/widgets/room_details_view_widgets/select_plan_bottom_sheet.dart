import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/functions/app_router.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/functions/styles.dart';

class SelectPlanBottomSheet extends StatefulWidget {
  final String? selectedPlan;
  final ValueChanged<String?> onPlanSelected;

  const SelectPlanBottomSheet({
    super.key,
    required this.selectedPlan,
    required this.onPlanSelected,
  });

  @override
  _SelectPlanBottomSheetState createState() => _SelectPlanBottomSheetState();
}

class _SelectPlanBottomSheetState extends State<SelectPlanBottomSheet> {
  late String? _selectedPlan;

  @override
  void initState() {
    super.initState();
    _selectedPlan = widget.selectedPlan;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 278.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 24.w, top: 12.h, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select your plan',
              style: Styles.textStyle16,
            ),
            SizedBox(height: 10.0.h),
            RadioListTile<String>(
              title: const Text('60.0 EGP/Hour'),
              value: 'hourly',
              groupValue: _selectedPlan,
              onChanged: (value) {
                setState(() {
                  _selectedPlan = value;
                });
                widget.onPlanSelected(value);
              },
            ),
            RadioListTile<String>(
              title: const Text('500.0 EGP/Day'),
              value: 'daily',
              groupValue: _selectedPlan,
              onChanged: (value) {
                setState(() {
                  _selectedPlan = value;
                });
                widget.onPlanSelected(value);
              },
            ),
            RadioListTile<String>(
              title: const Text('8,000.0 EGP/Month'),
              value: 'monthly',
              groupValue: _selectedPlan,
              onChanged: (value) {
                setState(() {
                  _selectedPlan = value;
                });
                widget.onPlanSelected(value);
              },
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kDateAndTimeView);
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
      ),
    );
  }
}

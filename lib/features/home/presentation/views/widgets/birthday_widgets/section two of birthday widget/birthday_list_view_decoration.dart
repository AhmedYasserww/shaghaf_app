import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/birthday_widgets/section%20two%20of%20birthday%20widget/birthday_item_of_decorations.dart';

class BirthDayListViewDecorations extends StatelessWidget {
  const BirthDayListViewDecorations({super.key, required this.onItemSelected});
  final Function(bool) onItemSelected;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 2,
      itemBuilder: (context, i) {
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: BirthDayItemDecorations(
            onItemSelected: onItemSelected,
          ),
        );
      },
    );
  }
}

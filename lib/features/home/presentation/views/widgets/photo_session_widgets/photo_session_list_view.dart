import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/photo_session_widgets/photo_session_item.dart';
class PhotoSessionListView extends StatelessWidget {
  const PhotoSessionListView({super.key, required this.onItemSelected});
  final Function(bool) onItemSelected;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 3,
      itemBuilder: (context, i) {
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child:  PhotoSessionItem(onItemSelected: onItemSelected,),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_app_bar_title_and_arrow.dart';
import 'package:shagaf/features/rooms/presentations/views/widgets/rooms_widgets/rooms_bloc_builder.dart';
import 'package:shagaf/features/rooms/presentations/views/widgets/rooms_widgets/rooms_list_view.dart';

class RoomsBody extends StatelessWidget {
  const RoomsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SizedBox(height: 16.h,),
          const CustomAppBarTitleAndArrow(title: "Rooms"),
          SizedBox(height: 24.h,),
          const Expanded(child: RoomsBlocBuilder())
        ],
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/functions/app_router.dart';
import 'package:shagaf/features/events/data/models/event_model.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/functions/styles.dart';
import '../../../../../../core/widgets/custom_image.dart';

class EventsItem extends StatelessWidget {
  const EventsItem({super.key, required this.eventModel});
final EventModel eventModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.25),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          CustomImage(
            height: 108,
            url: "assets/images/Frame 1080 2.png",
            borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 8.0.w,right: 12.w,top: 14.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  // Allow the Text widget to use available space
                  child: Text(
                    eventModel.title,
                    style: Styles.textStyle10.copyWith(
                      color: const Color(0xff252525)
                    ),
                    maxLines: 2,
                    overflow: TextOverflow
                        .ellipsis,
                  ),
                ),
                SizedBox(width: 14.w),
                InkWell(
                  onTap: () {
              GoRouter.of(context).push(AppRouter.kEventDetailsView);
                  },
                  child: CircleAvatar(
                    radius: 12.r,
                    backgroundColor: kMostColorPicked,
                    child: Center(
                        child: Icon(
                      Icons.arrow_forward_rounded,
                      size: 16.sp,
                      color: Colors.white,
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

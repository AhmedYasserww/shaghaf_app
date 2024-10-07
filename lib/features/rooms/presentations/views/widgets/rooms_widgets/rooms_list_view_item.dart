import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/widgets/favourite_container.dart';
import 'package:shagaf/core/widgets/rating_container.dart';

import '../../../../../../core/utils/functions/styles.dart';
import '../../../../data/models/rooms_model/rooms_model.dart';

class RoomsListViewItem extends StatelessWidget {
  const RoomsListViewItem({super.key, required this.roomsModel});
  final RoomsModel roomsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 187.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [kBoxShadow]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 138.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r)),
              image: const DecorationImage(
                  image: AssetImage("assets/images/Rectangle 346.png"),
                  fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 12.h, right: 14.w),
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: FavouriteContainer(),
                  ),
                ),
                SizedBox(
                  height: 66.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: const Align(
                    alignment: Alignment.bottomLeft,
                    child: RatingContainer(rating: 3.5),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 16.h),
            child: Text(
              roomsModel.title,
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}

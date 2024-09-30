import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'package:shagaf/core/widgets/favourite_container.dart';
class RoomDetailsViewAppBar extends StatelessWidget {
  const RoomDetailsViewAppBar({super.key, required this.textAppbar});
final String textAppbar;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 24.5.w,right: 23.5.w,top: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(child: Icon(Icons.arrow_back_ios_new,size: 20.sp,color: Colors.black), onTap: () {
            GoRouter.of(context).pop();
          },),
          Text(textAppbar,style: Styles.textStyle16.copyWith(
            color: const Color(0xff111111),
            fontWeight: FontWeight.w500
          ),),
          FavouriteContainer()
        ],
      ),
    );
  }
}

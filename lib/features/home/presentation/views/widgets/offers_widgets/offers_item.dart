import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/core/widgets/custom_image.dart';

class OffersItem extends StatelessWidget {
  const OffersItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.w,
      height: 176.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
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
            width: 163,
            height: 108,
            url: "assets/images/Frame 1080.png",
            borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0.w, right: 12.w, top: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Today’s offer", style: Styles.textStyle14),
                SizedBox(height: 2.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the start
                  children: [
                    Expanded( // Allow the Text widget to use available space
                      child: Text(
                        "10% discount on 3 hours or more",
                        style: Styles.textStyle10,
                        maxLines: 2, // Limits the text to a maximum of 2 lines
                        overflow: TextOverflow.ellipsis, // Handles overflow with an ellipsis
                      ),
                    ),
                    SizedBox(width: 8.w), // Adds spacing between text and CircleAvatar
                    InkWell(
                      onTap: (){
                        showAlertDialog(context);
                      },
                      child: CircleAvatar(
                        radius: 12.r,
                        backgroundColor: kMostColorPicked,
                        child: Center(child: Icon(Icons.arrow_forward_rounded, size: 16.sp,color: Colors.white,)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            height: 220.h,
            width: 320.w,
            padding: EdgeInsets.symmetric(vertical: 36.h,horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CustomImage(width: 22, height: 17, url: "assets/images/Group.png"),
                      SizedBox(height: 3.h,),
                      Expanded(
                        child: Text(
                          '30% off 10 booking (up to EGP 150)',
                          style: Styles.textStyle14.copyWith(
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 139.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: kMostColorPicked,width: 2)
                    ),
                    child: Center(
                      child:  Text(
                        'Shagaf150',
                        style: Styles.textStyle14,
                      ),
                    ),
                  ),
                  SizedBox(width: 113.w,child: const CustomButton(text: "Copy",color: kMostColorPicked,))
                ],
              ),),
        );
      },
    );
  }
}

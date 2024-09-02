import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
class CategoryDetailsListViewItem extends StatelessWidget {
  const CategoryDetailsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 187.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 138.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12.r),topRight: Radius.circular(12.r)),
              image: DecorationImage(image: AssetImage("assets/images/Rectangle 346.png"),fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 12.h,right: 14.w),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 24.r,
                      height: 24.r,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.5),
                        shape: BoxShape.circle
                      ),
                      child: Center(child: Icon(Icons.favorite,size: 18.sp,color: Color(0xffF04C29),)),
                    ),
                  ),
                ),
                SizedBox(height: 66.h,),
                Padding(
                  padding:  EdgeInsets.only(left: 8.w),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 51,
                      height: 22,
                      decoration: BoxDecoration(
                          color: Color(0xffF04C29).withOpacity(.52),
                          borderRadius: BorderRadius.circular(12.r)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: Colors.yellow,
                            size: 12.sp,
                          ),
                          SizedBox(width: .5.w),
                          Text(
                            "4.7",
                            style: Styles.textStyle12.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 12.w,top: 16.h),
            child: Text("Training room",style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w500,
            ),),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/core/widgets/custom_image.dart';
import 'package:shagaf/features/home/presentation/views/widgets/room_details_view_widgets/room_details_view_container_details_icon_and_text.dart';

class RoomDetailsViewContainerDetails extends StatelessWidget {
  const RoomDetailsViewContainerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, top: 12.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Training Room",
              style: Styles.textStyle18.copyWith(color: Color(0xffF04C29)),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              height: 32.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.table_chart_outlined),
                  Text(
                    "30 Seats",
                    style: Styles.textStyle14,
                  )
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 16.h,),
            Text("Amenities",style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600,color: Color(0xffF04C29)),),
            SizedBox(height: 14.h,),
            RoomDetailsViewContainerDetailsIconAndText(icon: Icons.print, text: "Printer, Scanner and photocopier"),
            SizedBox(height: 12.h,),
            RoomDetailsViewContainerDetailsIconAndText(icon: Icons.wifi, text: "Wi_fi"),
            SizedBox(height: 12.h,),
            RoomDetailsViewContainerDetailsIconAndText(icon: Icons.coffee, text: "Free coffee"),
            SizedBox(height: 12.h,),
            RoomDetailsViewContainerDetailsIconAndText(icon: Icons.video_library_sharp, text: "Video conf"),
            SizedBox(height: 12.h,),
            RoomDetailsViewContainerDetailsIconAndText(icon: Icons.screenshot_monitor_rounded, text: "LED screen"),
            SizedBox(height: 24.h,),
            Center(child: IconButton(icon: Icon(Icons.keyboard_double_arrow_down,size: 20.sp,), onPressed: () {
              showAmenitiesBottomSheet(context);
            },)),
            SizedBox(height: 16.h,),
            Row(
              children: [
                Icon(Icons.location_on_rounded,size: 19.sp,color: kMostColorPicked,),
                Text("Location",style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w600,
                  color: kMostColorPicked
                ),)
              ],
            ),
            SizedBox(height: 16.h,),
            CustomImage(width: 342, height: 146, url: "assets/images/Rectangle 346.png"),
            SizedBox(height: 96.h,)
          ],
        ),
      ),
    );
  }


  void showAmenitiesBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          height: 324.h, // Fixed height as per your requirement
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0.w,top: 12.h),
                child: Text(
                  'All Amenities',
                  style: Styles.textStyle16,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 22.0.w),
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.print, color: kIconColor),
                        title: Text('Printer, Scanner and Photocopier',style: Styles.textStyle14,),
                        subtitle: Text('Printing, photocopier and scanning services',style: Styles.textStyle12.copyWith(
                          fontWeight: FontWeight.w400
                        )),
                      ),
                      ListTile(
                        leading: Icon(Icons.wifi, color: kIconColor),
                        title: Text('Wi-Fi',style: Styles.textStyle14),
                        subtitle: Text('Free high-speed Wi-Fi',style: Styles.textStyle12.copyWith(
                            fontWeight: FontWeight.w400
                        )),
                      ),
                      ListTile(
                        leading: Icon(Icons.coffee, color: kIconColor),
                        title: Text('Free Coffee',style: Styles.textStyle14),
                        subtitle: Text('Free coffee and tea provided',style: Styles.textStyle12.copyWith(
                            fontWeight: FontWeight.w400
                        )),
                      ),
                      ListTile(
                        leading: Icon(Icons.videocam, color: kIconColor),
                        title: Text('Video Conference',style: Styles.textStyle14),
                        subtitle: Text('Video conferencing setup available',style: Styles.textStyle12.copyWith(
                            fontWeight: FontWeight.w400
                        )),
                      ),
                      ListTile(
                        leading: Icon(Icons.tv, color: kIconColor),
                        title: Text('LED Screen',style: Styles.textStyle14),
                        subtitle: Text('LED screen',style: Styles.textStyle12.copyWith(
                            fontWeight: FontWeight.w400
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

}

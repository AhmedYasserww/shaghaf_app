import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/core/widgets/custom_image.dart';
import 'package:shagaf/features/home/presentation/views/widgets/room_details_view_widgets/room_details_view_container_details_icon_and_text.dart';

class EventDetailsViewContainerDetails extends StatelessWidget {
  const EventDetailsViewContainerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, top: 12.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

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

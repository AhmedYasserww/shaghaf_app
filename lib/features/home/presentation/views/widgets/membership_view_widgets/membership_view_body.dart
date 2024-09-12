import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';

import '../event_details_widgets/custom_dotted_line.dart';
import 'custom_app_bar_for_member_ship.dart';

class MembershipViewBody extends StatefulWidget {
  const MembershipViewBody({super.key});

  @override
  State<MembershipViewBody> createState() => _MembershipViewBodyState();
}

class _MembershipViewBodyState extends State<MembershipViewBody> {
  bool isSelectedMonth = false;
  bool isSelectedDays = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          const CustomAppBarForMemberShip(),

          Padding(
            padding: EdgeInsets.only(top: 24.h, left: 24.h),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelectedMonth = !isSelectedMonth;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: isSelectedMonth ? const Color(0xffF04C29) : Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: isSelectedMonth
                        ? const Icon(Icons.check, size: 24, color: Colors.white)
                        : null,
                  ),
                ),
                SizedBox(width: 8.w),
                Text(
                  "A month",
                  style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          SizedBox(height: 8.h,),

          // 1250 LE Details Box
          buildDetailsBox(
              price: "1250 LE for one person",
              description1: "included daily drink and movie night for you and your friends",
              description2: "4 invitations for your friends spend a day in Shagaf included drink"
          ),

          Padding(
            padding: EdgeInsets.only(top: 32.h, left: 24.h),
            child: Row(
              children: [
                // Custom Checkbox for "15 Separate Days"
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelectedDays = !isSelectedDays;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: isSelectedDays ? const Color(0xffF04C29) : Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: isSelectedDays
                        ? const Icon(Icons.check, size: 24, color: Colors.white)
                        : null,
                  ),
                ),
                SizedBox(width: 8.w),
                Text(
                  "15 Separate days",
                  style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          SizedBox(height: 8.h,),

          // 750 LE Details Box
          buildDetailsBox(
              price: "750 LE for one person",
              description1: "One invitation for your friends spend a day in Shagaf included drink"
          ),
          const Spacer(),
          GestureDetector(
            onTap: (){},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff20473E),
                borderRadius: BorderRadius.circular(10)
              ),
              alignment: Alignment.center,
              child: Text("Next",style: Styles.textStyle16.copyWith(color: Colors.white),),
            ),
          ),
          SizedBox(height: 32.h,)
        ],
      ),
    );
  }

  Widget buildDetailsBox({required String price, required String description1, String? description2}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTimelineDot(),
                buildDottedLine(),
                buildTimelineDot(),
                if (description2 != null) buildDottedLine(),
                if (description2 != null) buildTimelineDot(),
              ],
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildDetailsText(price),
                  buildDetailsText(description1),
                  if (description2 != null) buildDetailsText(description2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/// another shape
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:shagaf/core/utils/styles.dart';
//
// import '../event_details_widgets/custom_dotted_line.dart';
// import 'custom_app_bar_for_member_ship.dart';
//
// class MembershipViewBody extends StatefulWidget {
//   const MembershipViewBody({super.key});
//
//   @override
//   State<MembershipViewBody> createState() => _MembershipViewBodyState();
// }
//
// class _MembershipViewBodyState extends State<MembershipViewBody> {
//   bool isSelectedMonth = false;
//   bool isSelectedDays = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: 20.h,
//           ),
//           CustomAppBarForMemberShip(),
//
//           // Month Option
//           Padding(
//             padding: EdgeInsets.only(top: 24.h, left: 24.h),
//             child: Row(
//               children: [
//                 // Checkbox for "A Month"
//                 Checkbox(
//                   value: isSelectedMonth,
//                   onChanged: (bool? value) {
//                     setState(() {
//                       isSelectedMonth = value ?? false;
//                     });
//                   },
//                 ),
//                 SizedBox(width: 8.w),
//                 Text(
//                   "A month",
//                   style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
//                 ),
//               ],
//             ),
//           ),
//
//           SizedBox(height: 8.h),
//
//           // 1250 LE Details Box
//           buildDetailsBox(
//               price: "1250 LE for one person",
//               description1: "included daily drink and movie night for you and your friends",
//               description2: "4 invitations for your friends spend a day in Shagaf included drink"
//           ),
//
//           // 15 Days Option
//           Padding(
//             padding: EdgeInsets.only(top: 32.h, left: 24.h),
//             child: Row(
//               children: [
//                 // Checkbox for "15 Separate Days"
//                 Checkbox(
//                   value: isSelectedDays,
//                   onChanged: (bool? value) {
//                     setState(() {
//                       isSelectedDays = value ?? false;
//                     });
//                   },
//                 ),
//                 SizedBox(width: 8.w),
//                 Text(
//                   "15 Separate days",
//                   style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
//                 ),
//               ],
//             ),
//           ),
//
//           SizedBox(height: 8.h),
//
//           // 750 LE Details Box
//           buildDetailsBox(
//               price: "750 LE for one person",
//               description1: "One invitation for your friends spend a day in Shagaf included drink"
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildDetailsBox({required String price, required String description1, String? description2}) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(24),
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 24),
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 6,
//               offset: Offset(0, 10),
//             ),
//           ],
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(width: 8),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 buildTimelineDot(),
//                 buildDottedLine(),
//                 buildTimelineDot(),
//                 if (description2 != null) buildDottedLine(),
//                 if (description2 != null) buildTimelineDot(),
//               ],
//             ),
//             SizedBox(width: 16.w),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   buildDetailsText(price),
//                   buildDetailsText(description1),
//                   if (description2 != null) buildDetailsText(description2!),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

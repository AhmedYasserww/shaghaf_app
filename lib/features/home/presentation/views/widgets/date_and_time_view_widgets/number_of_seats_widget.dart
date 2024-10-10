import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
class NumberOfSeatsWidget extends StatefulWidget {
  const NumberOfSeatsWidget({super.key, required this.onNumberOfSeatsChanged});
  final ValueChanged<int> onNumberOfSeatsChanged; // Callback function to pass index

  @override
  State<NumberOfSeatsWidget> createState() => _NumberOfSeatsWidgetState();
}

class _NumberOfSeatsWidgetState extends State<NumberOfSeatsWidget> {
  int numberOfSeats = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [kBoxShadow],
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 18.h,horizontal: 25.w),
        child: Row(
          children: [
            Row(
              children: [
                Icon(Icons.person_3_rounded),
                Text("Number Of seats",style: Styles.textStyle16,)
              ],
            ),
            Spacer(),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    if(numberOfSeats > 1){
                      setState(() {
                        numberOfSeats-- ;
                        widget.onNumberOfSeatsChanged(numberOfSeats);
                      });
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(5.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(color: (numberOfSeats > 1) ? kMostColorPicked : kMostColorPicked.withOpacity(.5)),
                    ),
                    child: Text("-",style: Styles.textStyle20.copyWith(
                      color: (numberOfSeats > 1) ? kMostColorPicked : kMostColorPicked.withOpacity(.5)
                    )),
                  ),
                ),
                SizedBox(width: 20.h),
                Text("$numberOfSeats"),
                SizedBox(width: 20.h),
                GestureDetector(
                  onTap: (){
                    if(numberOfSeats < 30){
                      setState(() {
                        numberOfSeats++;
                        widget.onNumberOfSeatsChanged(numberOfSeats);
                      });
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(color: (numberOfSeats < 30) ? kMostColorPicked : kMostColorPicked.withOpacity(.5)),
                    ),
                    child: Center(
                      child: Text("+",style: Styles.textStyle20.copyWith(
                        color: (numberOfSeats < 30) ? kMostColorPicked : kMostColorPicked.withOpacity(.5)
                      )),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

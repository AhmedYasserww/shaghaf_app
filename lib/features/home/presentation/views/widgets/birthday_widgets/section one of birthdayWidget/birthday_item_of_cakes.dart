import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/utils/functions/styles.dart';
class BirthDayItemCakes extends StatefulWidget {
  final Function(bool) onItemSelected;

  const BirthDayItemCakes({super.key, required this.onItemSelected});

  @override
  State<BirthDayItemCakes> createState() => _BirthDayItemCakesState();
}

class _BirthDayItemCakesState extends State<BirthDayItemCakes> {
  int count = 0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (count > 0 && isSelected == true) {
            isSelected = !isSelected;
          }
        });
      },
      child: Container(
        height: 80.h,
        decoration: BoxDecoration(
          color: isSelected == false && count == 0
              ? Colors.white
              : const Color(0xffffbcac),
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(12.r), top: Radius.circular(12.r)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 15),
          child: Row(
            children: [
              SizedBox(
                width: 60.w,
                height: 60.h,
                child: const Image(
                  image: AssetImage("assets/images/cackImage.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 16.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("From 1 to 6 person", style: Styles.textStyle14),
                  SizedBox(height: 16.h),
                  Text("300 LE",
                      style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w700)),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  if (count > 0)
                    CircleAvatar(
                      radius: 20,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (count > 0) count--;
                            if (count == 0) widget.onItemSelected(false);
                          });
                        },
                        icon: const Icon(Icons.remove,
                            color: Colors.orange, size: 26),
                      ),
                    ),
                  SizedBox(width: 10.w),
                  if (count > 0)
                    Text('$count', style: Styles.textStyle14),
                  SizedBox(width: 10.w),
                  CircleAvatar(
                    radius: 20,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          count++;
                          widget.onItemSelected(true);
                        });
                      },
                      icon: const Icon(Icons.add, color: Colors.orange, size: 26),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

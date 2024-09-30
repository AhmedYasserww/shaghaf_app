import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/utils/functions/styles.dart';

class BirthDayItemDecorations extends StatefulWidget {
  final Function(bool) onItemSelected;

  const BirthDayItemDecorations({super.key, required this.onItemSelected});

  @override
  State<BirthDayItemDecorations> createState() =>
      _BirthDayItemDecorationsState();
}

class _BirthDayItemDecorationsState extends State<BirthDayItemDecorations> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected == false ? Colors.white : const Color(0xffffbcac),
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
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 15),
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
                      style: Styles.textStyle12
                          .copyWith(fontWeight: FontWeight.w700)),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  isSelected == false
                      ? CircleAvatar(
                          radius: 20,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isSelected = !isSelected;
                                if (isSelected == false) {
                                  widget.onItemSelected(false);
                                } else {
                                  widget.onItemSelected(true);
                                }
                              });
                            },
                            icon: const Icon(Icons.add,
                                color: Colors.orange, size: 26),
                          ),
                        )
                      : const Text("")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

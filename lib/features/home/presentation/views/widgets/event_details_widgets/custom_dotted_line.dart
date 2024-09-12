import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
Widget buildTimelineDot() {
  return const Icon(Icons.circle, size: 16, color: Colors.orange);
}

Widget buildDottedLine() {
  return  DottedLine(
    direction: Axis.vertical,
    lineLength: 55.h,
    dashColor: Colors.orange,
    dashGapLength: 4,
    dashLength: 6,
  );
}

Widget buildDetailsText(String text) {
  return Padding(
    padding:  const EdgeInsets.only(bottom: 32.0),
    child: Text(
      text,
      style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w400)),
    );

}
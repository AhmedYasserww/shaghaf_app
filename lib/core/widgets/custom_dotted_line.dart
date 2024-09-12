import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';

import '../utils/styles.dart';

Widget buildTimelineDot() {
  return CircleAvatar(
    radius: 5.r,
    backgroundColor: kMostColorPicked,
  );
}

Widget buildDottedLine({required double lineLength}) {
  return  DottedLine(
    direction: Axis.vertical,
    lineLength: lineLength,
    dashColor: kMostColorPicked,
    dashGapLength: 4,
    dashLength: 3,
    lineThickness: 2,
  );
}

Widget buildDetailsText(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 32.0),
    child: Text(text,
        style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w400)),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/assets.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/core/widgets/custom_indicator.dart';
import 'home_view_advertisments_list.dart';
import 'home_view_app_bar.dart';
import 'home_view_location_and_name.dart';
import 'home_view_row_buttons.dart';

class HomeViewDetails extends StatelessWidget {
  const HomeViewDetails({
    Key? key,
    required this.currentIndex,
    required this.length,
  }) : super(key: key);

  final int currentIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeViewAppBar(),
          SizedBox(
            height: 100.h,
          ), // Adjust the height here
          const HomeViewLocationAndName(),
          SizedBox(height: 10.h),
          Align(
            alignment: Alignment.bottomLeft,
            child: CustomIndicator(
              currentIndex: currentIndex,
              length: length,
              mainAxisAlignment: MainAxisAlignment.start,
              height: 10,
              width: 10,
            ),
          ),
          SizedBox(
            height: 52.h,
          ),
          Text(
            "Advertisement",
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
          ),
          const HomeViewAdvertismentsList(),
          SizedBox(
            height: 24.h,
          ),
          const HomeViewRowButtons(),

          // ClipPath added here
          ClipPath(
            clipper: CustomClipperPath(),
            child: Container(
              height: 150.h,
              width: 342.w,
              color: Colors.grey[200], // لون الخلفية
              child: CustomPaint(
                size: Size(342.w, 150.h),
                painter: RPSCustomPainter(), // إذا كنت تحتاج لرسم شيء فوق الخلفية
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    final borderRadius = Radius.circular(15); // نصف القطر لجميع الزوايا

    path.addRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height), // تحديد المستطيل
        borderRadius,
      ),
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..style = PaintingStyle.fill;
    paint.color = Colors.red.withOpacity(1.0);
    RRect rRect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Radius.circular(15), // نصف القطر
    );

    canvas.drawRRect(rRect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
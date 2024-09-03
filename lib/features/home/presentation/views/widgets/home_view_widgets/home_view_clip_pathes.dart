import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
class HomeViewClipPathes extends StatelessWidget {
  const HomeViewClipPathes({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: ContainerClipper1(),
          child: Container(
            width: 342.w,
            height: 200.h,
            decoration: BoxDecoration(
                color: Color(0xff20473E).withOpacity(.65), borderRadius: BorderRadius.circular(10.r)),
          ),
        ),
        Column(
          children: [
            SizedBox(height: 150.h,),
            Row(
              children: [
                ClipPath(
                  clipper: ContainerClipper2(),
                  child: Container(
                    width: 163.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                        color: kMostColorPicked.withOpacity(.65),
                        borderRadius: BorderRadius.circular(20.r)),
                  ),
                ),
                const Spacer(),
                ClipPath(
                  clipper: ContainerClipper3(),
                  child: Container(
                    width: 163.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                        color: Color(0xffFFCC0A).withOpacity(.65),
                        borderRadius: BorderRadius.circular(20.r)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
class ContainerClipper1 extends CustomClipper<Path> {
  var path = Path();

  @override
  getClip(Size size) {
    path.lineTo(0, size.height * .75);
    path.lineTo(size.width * .5, size.height);
    path.lineTo(size.width, size.height * .75);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class ContainerClipper2 extends CustomClipper<Path> {
  var path = Path();

  @override
  getClip(Size size) {
    path.moveTo(0, size.height * .1);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * .35);
    path.lineTo(0, size.height * .1);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class ContainerClipper3 extends CustomClipper<Path> {
  var path = Path();

  @override
  getClip(Size size) {
    path.moveTo(0, size.height * .35);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * .1);
    path.lineTo(0, size.height * .35);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

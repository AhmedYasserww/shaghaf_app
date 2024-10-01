import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'package:shagaf/core/widgets/custom_image.dart';

import '../../../../../../core/utils/functions/app_router.dart';

class HomeViewClipPathes extends StatelessWidget {
  const HomeViewClipPathes({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: (){
            GoRouter.of(context).push(AppRouter.kCategoryDetailsView);
          },
          child: ClipPath(
            clipper: ContainerClipper1(),
            child: Container(
              width: 342.w,
              height: 200.h,
              decoration: BoxDecoration(
                color: const Color(0xff20473E).withOpacity(.65),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: 30.0.w,right: 15.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Rooms",style: Styles.textStyle24.copyWith(
                      color: Colors.white,
                    ),),
                    const Spacer(),
                    const Image(image: AssetImage("assets/images/Game day-amico 2.png")),
                  ],
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 150.h,
            ),
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
                    child: Padding(
                      padding:  EdgeInsets.only(top: 56.0.h,left: 6.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Orders",style: Styles.textStyle18.copyWith(
                            color: Colors.white,
                          ),),
                          const CustomImage(width: 115, height: 115, url: "assets/images/Ecommerce web page-amico 1.png")

                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kEventsView);
                  },
                  child: ClipPath(
                    clipper: ContainerClipper3(),
                    child: Container(
                      width: 163.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFCC0A).withOpacity(.65),
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Padding(
                        padding:  EdgeInsets.only(top: 56.0.h,right: 6.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Events",style: Styles.textStyle18.copyWith(
                              color: Colors.white,
                            ),),
                            const CustomImage(width: 115, height: 115, url: "assets/images/Prototyping process-amico (1) 3.png")

                          ],
                        ),
                      ),                  ),
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

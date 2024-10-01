import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/functions/app_router.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'package:shagaf/features/onboarding/data/models/onboarding_model.dart';
import 'package:shagaf/features/onboarding/presentation/views/widgets/next_button.dart';
import 'package:shagaf/core/widgets/custom_indicator.dart';

class BoardingViewBody extends StatefulWidget {
  const BoardingViewBody({super.key});

  @override
  State<BoardingViewBody> createState() => _HomeViewState();
}

class _HomeViewState extends State<BoardingViewBody> {
  int currentIndex = 0;
  late PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h, right: 24.w,left: 24.w),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kLogin);
              },
              child: Text(
                'Skip',
                style: Styles.textStyle17.copyWith(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: content.length,
              itemBuilder: (context, i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 335.h,
                        width: 335.w,
                        child: SvgPicture.asset(content[i].image)),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      content[i].title,
                      style: Styles.textStyle20.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      content[i].desc,
                      style: Styles.textStyle16
                          .copyWith(color: const Color(0xffFFC100)),
                      textAlign: TextAlign.center,
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 24.h),
          CustomIndicator(
            currentIndex: currentIndex,
            length: content.length,
            width: 15,
            height: 15,
          ),
          SizedBox(height: 24.h),
          NextButton(onPressed: onNextButtonPressed),
          SizedBox(height: 60.h,)
        ],
      ),
    );
  }

  void onNextButtonPressed() {
    if (currentIndex == content.length - 1) {
      GoRouter.of(context).push(AppRouter.kLogin);
    } else {
      controller.nextPage(
        duration: const Duration(milliseconds: 200),
        curve: Curves.bounceIn,
      );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/app_router.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/features/onboarding/data/models/onboarding_model.dart';
import 'package:shagaf/features/onboarding/presentation/views/widgets/next_Button.dart';
import 'package:shagaf/features/onboarding/presentation/views/widgets/on_boarding_indicator.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeViewBody> {
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
    return Column(
        children: [
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
                    Padding(
                      padding:  EdgeInsets.only(top: 24.h, right: 8.w),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {
                            GoRouter.of(context).push(AppRouter.kLogin);
                          },
                          child: const Text(
                            'Skip',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 48.h),
                      child: SvgPicture.asset(content[i].image),
                    ),
                     SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      content[i].title,
                      style: Styles.textStyle20.copyWith(color: Colors.white),
                    ),
                     SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      content[i].desc,
                      style: Styles.textStyle16.copyWith(color: const Color(0xffFFC100)),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ),
           SizedBox(height: 24.h),
          OnboardingIndicators(currentIndex: currentIndex,),
           SizedBox(height: 24.h),
     NextButton(onPressed:onNextButtonPressed ),
          SizedBox(height: 24.h,)
        ],
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



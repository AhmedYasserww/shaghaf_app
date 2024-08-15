import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/app_router.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/gmail_field.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/password_field.dart';

class LoginDetails extends StatelessWidget {
  const LoginDetails({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = GlobalKey();
    return Container(
      width: 342.w,
      height: 300.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: kContainerColorForAuth,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 9.w, top: 15.h, right: 10.w),
        child: Form(
          key: formState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GmailField(),
              SizedBox(
                height: 24.h,
              ),
              PasswordField(),
              SizedBox(
                height: 6.h,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kForgetPassword);
                  },
                  child: Container(
                    height: 11.h,
                    child: Text(
                      "Forget Password?",
                      style: Styles.textStyle10.copyWith(
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff363636)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: "LOGIN",
                      onPressed: () {
                        if (formState.currentState!.validate()) {
                          formState.currentState!.save();
                        } else {
                          print("not valid");
                        }
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: Styles.textStyle10,
                  ),
                  InkWell(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kSignUp);
                    },
                      child: Text(
                    "Sign up",
                    style:
                        Styles.textStyle12.copyWith(color: const Color(0xffF04C29)),
                  ))
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

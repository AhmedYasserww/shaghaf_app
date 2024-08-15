import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/app_router.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/gmail_field.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/password_field.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/signUpWidgets/confirm_password_field.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/signUpWidgets/user_name_field.dart';

import '../../../../../../constants.dart';

class SignUpDetails extends StatelessWidget {
  const SignUpDetails({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = GlobalKey();
    return Container(
      width: 342.w,
      height: 436.h,
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
              const GmailField(),
              SizedBox(
                height: 19.h,
              ),
              const UserNameField(),
              SizedBox(
                height: 19.h,
              ),
              const PasswordField(),
              SizedBox(
                height: 19.h,
              ),
              const ConfirmPasswordField(),
              SizedBox(
                height: 19.h,
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
                    "Already  have an account? ",
                    style: Styles.textStyle10,
                  ),
                  InkWell(
                      onTap: (){
                        GoRouter.of(context).push(AppRouter.kLogin);
                      },
                      child: Text(
                        "Log in",
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

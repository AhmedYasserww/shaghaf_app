import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/app_router.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/gmail_field.dart';
class ForgetPasswordDetails extends StatelessWidget {
  const ForgetPasswordDetails({Key? key}) : super(key: key);

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
              Text("Forgot Your Password?",style: Styles.textStyle20,),
              SizedBox(height: 13.h,),
              Text("Enter your gmail, we will send you confirmation code",style: Styles.textStyle12.copyWith(
                fontWeight: FontWeight.w400,
                color: Color(0xff787878)
              ),),
              SizedBox(height: 47.h,),
              GmailField(),
              SizedBox(height: 24.h,),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: "Reset Password",
                      onPressed: () {
                        if (formState.currentState!.validate()) {
                          formState.currentState!.save();
                          GoRouter.of(context).push(AppRouter.kVerification);
                        } else {
                          print("not valid");
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/core/widgets/custom_image.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/verificationWidgets/otp_widget.dart';

class VerificationDetails extends StatefulWidget {
   VerificationDetails({super.key});
  String? testVerificationCode;
  String successVerificationCode = "123456";

  @override
  State<VerificationDetails> createState() => _VerificationDetailsState();
}

class _VerificationDetailsState extends State<VerificationDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.w,
      height: 300.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: kContainerColorForAuth,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 9.w, top: 15.h, right: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter Verification Code",
              style: Styles.textStyle20,
            ),
            SizedBox(
              height: 13.h,
            ),
            Text(
              "Enter code that we have sent to your email",
              style: Styles.textStyle12.copyWith(
                  fontWeight: FontWeight.w400, color: const Color(0xff787878)),
            ),
            Text(
              "email",
              style: Styles.textStyle12.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 47.h,
            ),
            OtpWidget(
              onSubmit: (verificationCode) {
                setState(() {
                  widget.testVerificationCode = verificationCode;
                });
              },
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: "verify",
                    onPressed: () {
                        return _showAlertDialog(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
              width: 327.w,
              height: 401.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 18.h,
                  ),
                  const CustomImage(
                      width: 200,
                      height: 200,
                      url: "assets/images/Celebration-amico 1.jpg"),
                  SizedBox(
                    height: 12.h,
                  ),
                  SizedBox(
                    height: 81.h,
                    width: 263.w,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25.h,
                          width: 211.w,
                          child: Center(
                              child: Text(
                            "Success",
                            style: Styles.textStyle20
                                .copyWith(fontWeight: FontWeight.w700),
                          )),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        SizedBox(
                          height: 48.h,
                          width: 263.w,
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              "You have successfully reset your password.",
                              style: Styles.textStyle16
                                  .copyWith(color: const Color(0xffA1A8B0)),
                            ),

                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  SizedBox(
                    height: 51.h,
                    width: 187.w,
                    child: CustomButton(
                      text: "Done",
                      borderRadius: BorderRadius.circular(12.r),
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}

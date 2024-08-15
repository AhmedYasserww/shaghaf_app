import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/gmail_field.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/verificationWidgets/otp_widget.dart';
class VerificationDetails extends StatelessWidget {
  const VerificationDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String successVerficationCode = "123456";
    String? testVerficationCode;
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
            Text("Enter Verification Code",style: Styles.textStyle20,),
            SizedBox(height: 13.h,),
            Text("Enter code that we have sent to your email",style: Styles.textStyle12.copyWith(
                fontWeight: FontWeight.w400,
                color: Color(0xff787878)
            ),),
            Text("email",style: Styles.textStyle12.copyWith(
                fontWeight: FontWeight.w400,
            ),),
            SizedBox(height: 47.h,),
            OtpWidget(onSubmit: (verficationCode){
              testVerficationCode = verficationCode;
            },),
            SizedBox(height: 40.h,),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: "verify",
                    onPressed: () {
                      if(testVerficationCode == successVerficationCode){
                        return showAlertDialog(context, "Verification Code", 'Code entered is $testVerficationCode');
                      }
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
  void showAlertDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          child: AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Closes the dialog
                },
                child: const Text("OK"),
              ),
            ],
          ),
        );
      },
    );
  }
}

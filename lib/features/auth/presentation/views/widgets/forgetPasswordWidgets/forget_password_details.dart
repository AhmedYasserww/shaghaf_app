import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/functions/app_router.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/features/auth/presentation/manager/forget_password/forget_password_cubit.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/gmail_field.dart';

import '../../../manager/sign_up/sign_up_cubit.dart';

class ForgetPasswordDetails extends StatefulWidget {
  const ForgetPasswordDetails({super.key});
  @override
  State<ForgetPasswordDetails> createState() => _ForgetPasswordDetailsState();
}

class _ForgetPasswordDetailsState extends State<ForgetPasswordDetails> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  @override
  void initState() {
    emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is ForgetPasswordSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Validate your email!')),
          );
          GoRouter.of(context).push(
            AppRouter.kVerification,
            extra: {
              'email': emailController.text,
              'title': 'You have successfully reset your password.',
            },
          ); // Navigate to home page
        } else if (state is ForgetPasswordFailure) {
          // Handle failure - show an error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errMessage)),
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (state is SignUpLoading)
                const Center(child: CircularProgressIndicator()),
              Text(
                "Forgot Your Password?",
                style: Styles.textStyle20,
              ),
              SizedBox(
                height: 13.h,
              ),
              Text(
                "Enter your gmail, we will send you confirmation code",
                style: Styles.textStyle12.copyWith(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff787878)),
              ),
              SizedBox(
                height: 47.h,
              ),
              GmailField(emailController: emailController),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: "Reset Password",
                      onPressed: () {
                        if (globalKey.currentState!.validate()) {
                          globalKey.currentState!.save();
                          context
                              .read<ForgetPasswordCubit>()
                              .resetPassword(email: emailController.text);
                        } else {}
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

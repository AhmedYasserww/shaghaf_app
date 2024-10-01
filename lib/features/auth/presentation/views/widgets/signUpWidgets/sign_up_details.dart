import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import this for BlocConsumer
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/functions/app_router.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/gmail_field.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/password_field.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/signUpWidgets/confirm_password_field.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/signUpWidgets/phone_field.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/signUpWidgets/user_name_field.dart';

import '../../../manager/sign_up/sign_up_cubit.dart'; // Import your cubit

class SignUpDetails extends StatelessWidget {
  const SignUpDetails({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = GlobalKey();
    String email = '';
    String userName = '';
    String password = '';
    String phone = '';
    String confirmPassword = '';

    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          // Handle success - navigate or show a success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Validate your email!')),
          );
          GoRouter.of(context).push(AppRouter.kVerification,extra: email); // Navigate to home page
        } else if (state is SignUpFailure) {
          // Handle failure - show an error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errMessage)),
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: formState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (state is SignUpLoading)
                Center(child: CircularProgressIndicator()), // Show loading indicator during sign-up
              GmailField(
                onSaved: (value) => email = value ?? '',
              ),
              SizedBox(height: 19.h),
              PhoneField(
                onSaved: (value) => phone = value ?? '',
              ),
              SizedBox(height: 19.h),
              UserNameField(
                onSaved: (value) => userName = value ?? '',
              ),
              SizedBox(height: 19.h),
              PasswordField(
                onSaved: (value) => password = value ?? '',
              ),
              SizedBox(height: 19.h),
              ConfirmPasswordField(
                onSaved: (value) => confirmPassword = value ?? '',
              ),
              SizedBox(height: 19.h),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: "Sign Up",
                      onPressed: () {
                        if (formState.currentState!.validate()) {
                          formState.currentState!.save();
                          // Call the cubit's signUp method with form data
                          context.read<SignUpCubit>().signUp(
                            phone: phone,
                            email: email,
                            useName: userName,
                            password: password,
                            birthDate: '2000-02-01', // Example birthDate, change it accordingly
                          );
                          print(email);
                          print(phone);
                          print(userName);
                          print(password);
                        }
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: Styles.textStyle10,
                  ),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kLogin);
                    },
                    child: Text(
                      "Log in",
                      style: Styles.textStyle12.copyWith(color: const Color(0xffF04C29)),
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

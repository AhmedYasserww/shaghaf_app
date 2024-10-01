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

class SignUpDetails extends StatefulWidget {
  const SignUpDetails({super.key});

  @override
  State<SignUpDetails> createState() => _SignUpDetailsState();
}

class _SignUpDetailsState extends State<SignUpDetails> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;
  late TextEditingController phoneNumberController;
  late TextEditingController confirmPasswordController;


  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    phoneNumberController = TextEditingController();
    confirmPasswordController=TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          // Handle success - navigate or show a success message
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Validate your email!')),
          );
          GoRouter.of(context).push(AppRouter.kVerification,extra: emailController.text); // Navigate to home page
        } else if (state is SignUpFailure) {
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
              GmailField(
         emailController:emailController ,
              ),
              SizedBox(height: 19.h),
              PhoneField(
               phoneController: phoneNumberController,
              ),
              SizedBox(height: 19.h),
              UserNameField(
              userNameController: nameController,
              ),
              SizedBox(height: 19.h),
              PasswordField(
               passwordController: passwordController,
              ),
              SizedBox(height: 19.h),
              ConfirmPasswordField(
                passwordController: passwordController,
confirmPasswordController: confirmPasswordController,
              ),
              SizedBox(height: 19.h),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: "Sign Up",
                      onPressed: () {
                        if (globalKey.currentState!.validate()) {
                          globalKey.currentState!.save();
                          // Call the cubit's signUp method with form data
                          context.read<SignUpCubit>().signUp(
                            phone:phoneNumberController.text,
                            email:emailController.text ,
                            useName: nameController.text,
                            password: passwordController.text,
                            birthDate: '2000-02-01', // Example birthDate, change it accordingly
                          );
                          print(phoneNumberController.text);
                          print(emailController.text);
                          print(nameController.text);
                          print(passwordController.text);
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

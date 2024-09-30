import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/constants.dart';
import 'package:shagaf/core/utils/functions/app_router.dart';
import 'package:shagaf/core/utils/functions/styles.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/features/auth/presentation/manager/login/login_cubit.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/gmail_field.dart';
import 'package:shagaf/features/auth/presentation/views/widgets/password_field.dart';

class LoginDetails extends StatelessWidget {
  const LoginDetails({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = GlobalKey();
    String email = '';
    String password = '';
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          // Handle success - navigate or show a success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('login Successed')),
          );
          GoRouter.of(context).push(AppRouter.kHomeView); // Navigate to home page
        } else if (state is LoginFailure) {
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
              if (state is LoginLoading)
                Center(child: CircularProgressIndicator()),
              GmailField(
                onSaved: (value) => email = value ?? '',
              ),
              SizedBox(
                height: 24.h,
              ),
              PasswordField(
                onSaved: (value) => password = value ?? '',
              ),
              SizedBox(
                height: 6.h,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kForgetPassword);
                  },
                  child: Text(
                    "Forget Password?",
                    style: Styles.textStyle10.copyWith(
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff363636)),
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
                          context.read<LoginCubit>().login(email: email, password: password);
                          print(email);
                          print(password);
                        } else {}
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
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kSignUp);
                      },
                      child: Text(
                        "Sign up",
                        style: Styles.textStyle12.copyWith(
                            color: kMostColorPicked),
                      ))
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

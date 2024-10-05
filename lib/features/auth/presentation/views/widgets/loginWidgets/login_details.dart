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
import 'package:shared_preferences/shared_preferences.dart'; // Import for SharedPreferences

class LoginDetails extends StatefulWidget {
  const LoginDetails({super.key});

  @override
  State<LoginDetails> createState() => _LoginDetailsState();
}

class _LoginDetailsState extends State<LoginDetails> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _printToken() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('auth_token');
    print('Token: $token');  // Print the token here
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) async {
        if (state is LoginSuccess) {
          // Handle success - print token and navigate
          await _printToken(); // Print the token after successful login

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Login Successfully')),
          );
          GoRouter.of(context).push(AppRouter.kHomeView); // Navigate to home page
        } else if (state is LoginFailure) {
          // Handle failure - show an error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errMessage)),
          );
          print(state.errMessage);
        }
      },
      builder: (context, state) {
        return Form(
          key: globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (state is LoginLoading)
                const Center(child: CircularProgressIndicator()),
              GmailField(
                emailController: emailController,
              ),
              SizedBox(
                height: 24.h,
              ),
              PasswordField(
                passwordController: passwordController,
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
                        if (globalKey.currentState!.validate()) {
                          globalKey.currentState!.save();
                          context.read<LoginCubit>().login(
                              email: emailController.text,
                              password: passwordController.text
                          );
                          print(emailController.text);
                          print(passwordController.text);
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

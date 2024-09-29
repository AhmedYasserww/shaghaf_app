import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shagaf/core/utils/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shagaf/features/auth/presentation/manager/verification/verification_cubit.dart';

import 'core/utils/api_serivce.dart';
import 'features/auth/data/repos/auth_repo/auth_repo_impl.dart';
import 'features/auth/presentation/manager/sign_up/sign_up_cubit.dart';

void main() {
  runApp(const ShaghafApp());
}

class ShaghafApp extends StatelessWidget {
  const ShaghafApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => SignUpCubit(AuthRepoImpl(apiService: ApiService(Dio()))),
        ),BlocProvider(
            create: (context) => VerificationCubit(AuthRepoImpl(apiService: ApiService(Dio()))),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(textTheme: GoogleFonts.comfortaaTextTheme(),scaffoldBackgroundColor: Colors.white),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shagaf/core/utils/app_router.dart';

void main() {
  runApp(const ShaghafApp());
}

class ShaghafApp extends StatelessWidget {
  const ShaghafApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(textTheme: GoogleFonts.comfortaaTextTheme()),
        );
      },
    );
  }
}



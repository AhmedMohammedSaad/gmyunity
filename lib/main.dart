import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/core/routing/app_router.dart';
import 'package:gymumity/core/routing/routes.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), // Updated to match Figma (390x844)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Gymunity',
          theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: const Color(0xFFAE1709),
            scaffoldBackgroundColor: Colors.black,
            useMaterial3: true,
          ),
          onGenerateRoute: appRouter.onGenerateRoute,
          initialRoute: Routes.onboarding,
        );
      },
    );
  }
}

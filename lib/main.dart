import 'package:flutter/material.dart';
import 'package:flutter_kalpesh_assessment/AppUtils/app_colors.dart';
import 'package:flutter_kalpesh_assessment/Presentation/Screens/home_page_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.kDeepPurpleColor,
        ),
        useMaterial3: true,
      ),
      home: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(
                fontSizeFactor: 1.sp,
              ),
            ),
            home: child,
          );
        },
        child: const HomePageScreen(),
      ),
    );
  }
}

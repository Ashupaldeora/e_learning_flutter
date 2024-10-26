import 'package:e_learning/utils/colors.dart';
import 'package:e_learning/view/login_register/lets_you_in.dart';
import 'package:e_learning/view/login_register/login.dart';
import 'package:e_learning/view/login_register/register.dart';
import 'package:e_learning/view/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: false,
      splitScreenMode: false,
      builder: (context, child) => GetMaterialApp(
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: GoogleFonts.jost().fontFamily,
        ),
        home: SplashScreen(),
        getPages: [
          GetPage(
            name: OnboardingScreen.routeName,
            page: () => OnboardingScreen(),
          ),
          GetPage(
            name: LetsYouInPage.routeName,
            page: () => LetsYouInPage(),
          ),
          GetPage(
            name: RegisterPage.routeName,
            page: () => RegisterPage(),
          ),
          GetPage(
            name: LoginPage.routeName,
            page: () => LoginPage(),
          )
        ],
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () => Get.toNamed(OnboardingScreen.routeName),
    );

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/SHAPE.png'),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.h),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(width: 2.h, color: Color(0xffE8F1FF)),
              shape: BoxShape.circle,
            ),
          ),
          Image.asset('assets/images/LOGO.png'),
        ],
      ),
    );
  }
}

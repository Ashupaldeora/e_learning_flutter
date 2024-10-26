import 'package:e_learning/utils/colors.dart';
import 'package:e_learning/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LetsYouInPage extends StatelessWidget {
  static const routeName = '/letsYouIn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text(
              "Let's you in",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32.h),
            const SocialButton(
                icon: Constants.googleIcon, label: 'Continue with Google'),
            SizedBox(height: 16.h),
            const SocialButton(
                icon: Constants.appleIcon, label: 'Continue with Apple'),
            SizedBox(height: 40.h),
            const Text("( Or )", style: TextStyle(color: Colors.black)),
            SizedBox(height: 32.h),
            Container(
              height: 50.h,
              margin: EdgeInsets.symmetric(horizontal: 15.h),
              padding: EdgeInsets.only(right: 10.h, left: 20.h),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign In with Your Account',
                    style: TextStyle(
                        fontSize: 14.h,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 8),
                  Container(
                    height: 35.h,
                    width: 35.h,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16.h),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: const Text(
                "Don't have an Account? SIGN UP",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String icon;
  final String label;

  const SocialButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon),
            SizedBox(
              width: 5.h,
            ),
            Text(
              label,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13.h,
                  fontFamily: GoogleFonts.mulish().fontFamily),
            )
          ],
        ),
      ),
    );
  }
}

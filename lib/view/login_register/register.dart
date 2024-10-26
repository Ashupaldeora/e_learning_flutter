import 'package:e_learning/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login.dart';

class RegisterPage extends StatelessWidget {
  static const routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Constants.inAppLogo,
                height: 80.h), // Add your logo here
            SizedBox(height: 16.h),
            Text(
              "Getting Started..!",
              style: TextStyle(fontSize: 22.h, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),
            Text("Create an Account to Continue your allCourses"),
            SizedBox(height: 24.h),
            CustomTextField(hintText: 'Email', icon: Icons.email),
            SizedBox(height: 16.h),
            CustomTextField(hintText: 'Password', icon: Icons.lock),
            SizedBox(height: 16.h),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                Text("Agree to Terms & Conditions"),
              ],
            ),
            SizedBox(height: 24.h),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
                minimumSize: Size(double.infinity, 50.h),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign Up'),
                  SizedBox(width: 8.h),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text("Or Continue With"),
            SizedBox(height: 8),
            SocialLoginRow(),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: Text("Already have an Account? SIGN IN"),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;

  const CustomTextField({required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

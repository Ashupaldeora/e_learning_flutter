import 'package:e_learning/view/login_register/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', height: 80), // Add your logo here
            SizedBox(height: 16),
            Text(
              "Let’s Sign In..!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text("Login to Your Account to Continue your Courses"),
            SizedBox(height: 24),
            CustomTextField(hintText: 'Email', icon: Icons.email),
            SizedBox(height: 16),
            CustomTextField(hintText: 'Password', icon: Icons.lock),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text("Remember Me"),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password?"),
                ),
              ],
            ),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign In'),
                  SizedBox(width: 8),
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
              child: Text("Don't have an Account? SIGN UP"),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialLoginRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.g_mobiledata, size: 40),
          onPressed: () {},
        ),
        SizedBox(width: 16),
        IconButton(
          icon: Icon(Icons.apple, size: 40),
          onPressed: () {},
        ),
      ],
    );
  }
}

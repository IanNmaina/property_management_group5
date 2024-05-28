// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          children: [
            Text(
              'Hello, Welcome to Marris Property',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
              //width: 50,
              //child: Text('This is text for test sizebox'),
            ),
            Text(
              'Login to Continue',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  print('Forgot is Clicked');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                child: Text('Forgot Password?'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  print('Login is Clicked');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                ),
                child: Text('Login'),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Or sign in with',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                print('Google is Clicked');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    width: 22,
                    height: 22,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Login with Google'),
                ],
              ),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(150),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/fb.png',
                    width: 22,
                    height: 22,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Login with Facebook'),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Dont have account?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.amber,
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

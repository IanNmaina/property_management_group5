<<<<<<< HEAD
=======
// ignore_for_file: avoid_print

>>>>>>> ebb331a54e1491c2fe3ed0494befe5685e0b35c0
import 'package:flutter/material.dart';
import 'package:marries_property/styles/colors.dart';

class LoginPage extends StatelessWidget {
<<<<<<< HEAD
=======
  const LoginPage({super.key});

>>>>>>> ebb331a54e1491c2fe3ed0494befe5685e0b35c0
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.background,
<<<<<<< HEAD
=======
        body: Column(
          children: [
            const Spacer(),
            const Text(
              'Hello, Welcome to Marris Property',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Urbanist',
              ),
            ),
            const SizedBox(
              height: 16,
              //width: 50,
              //child: Text('This is text for test sizebox'),
            ),
            const Text(
              'Login to Continue',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: const OutlineInputBorder(
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
                  Navigator.pushNamed(context, '/forgot_password');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                child: const Text('Forgot Password?'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                ),
                child: const Text('Login'),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Or sign in with',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/google.png',
                    width: 22,
                    height: 22,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text('Login with Google'),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(150),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/fb.png',
                    width: 22,
                    height: 22,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text('Login with Facebook'),
                ],
              ),
            ),
            Row(
              children: [
                const Text(
                  'Dont have account?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/signup');
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.amber,
                  ),
                  child: const Text(
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
>>>>>>> ebb331a54e1491c2fe3ed0494befe5685e0b35c0
      ),
    );
  }
}

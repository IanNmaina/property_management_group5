// lib/forgot_password.dart
// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:marries_property/styles/colors.dart'; //

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Forgot Password',
            style: TextStyle(color: AppColors.font)),
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: AppColors.font),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: ForgotPasswordForm(),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  bool _submitted = false;

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      setState(() {
        _submitted = true;
      });
      // Handle the password reset logic here
      print('Email: $_email');
    }

    @override
    Widget build(BuildContext context) {
      return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter your email to reset your password',
              style: TextStyle(color: AppColors.font2, fontSize: 16),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: AppColors.font2),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.font2),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.green),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) {
                _email = value ?? '';
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: _submit,
                style: ElevatedButton.styleFrom(
                  foregroundColor: AppColors.font,
                  backgroundColor: AppColors.primary,
                  disabledBackgroundColor: AppColors.disableButton,
                  disabledForegroundColor: AppColors.disablefont,
                ),
                child: const Text('Reset Password'),
              ),
            ),
            if (_submitted)
              Center(
                child: Column(
                  children: [
                    const Text(
                      'One of our team members will get back to you within 5 minutes',
                      style: TextStyle(
                          color: Color.fromARGB(255, 24, 27, 24), fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Email: $_email',
                      style: const TextStyle(color: AppColors.font2),
                    ),
                    Text(
                      'Time: ${DateTime.now()}',
                      style: const TextStyle(color: AppColors.font2),
                    ),
                  ],
                ),
              ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Enter your email to reset your password',
            style: TextStyle(color: AppColors.font2, fontSize: 16),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: AppColors.font2),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.font2),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.green),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            onSaved: (value) {
              _email = value ?? '';
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          Center(
            child: ElevatedButton(
              onPressed: _submit,
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColors.font,
                backgroundColor: AppColors.primary,
                disabledBackgroundColor: AppColors.disableButton,
                disabledForegroundColor: AppColors.disablefont,
              ),
              child: const Text('Reset Password'),
            ),
          ),
          if (_submitted)
            Center(
              child: Column(
                children: [
                  const Text(
                    'One of our team members will get back to you within 5 minutes',
                    style: TextStyle(
                        color: Color.fromARGB(255, 25, 26, 25), fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Email: $_email',
                    style: const TextStyle(color: AppColors.font2),
                  ),
                  Text(
                    'Time: ${DateTime.now()}',
                    style: const TextStyle(color: AppColors.font2),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

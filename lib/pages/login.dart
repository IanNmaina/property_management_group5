import 'package:flutter/material.dart';

// LoginPage
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Example user role based on login credentials
                String userRole = 'tenant'; // Replace with actual logic

                if (userRole == 'agent') {
                  Navigator.pushReplacementNamed(context, '/agent_dashboard');
                } else if (userRole == 'tenant') {
                  Navigator.pushReplacementNamed(context, '/tenant_dashboard');
                } else if (userRole == 'admin') {
                  Navigator.pushReplacementNamed(context, '/admin_dashboard');
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

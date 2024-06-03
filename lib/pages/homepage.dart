import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real Estate App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Real Estate App!'),
            ElevatedButton(
              onPressed: () {
                _showRoleDialog(context);
              },
              child: const Text('Enter Your Role'),
            ),
          ],
        ),
      ),
    );
  }

  void _showRoleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Enter your role'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Agent'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/agent_dashboard');
                },
              ),
              ListTile(
                title: const Text('Tenant'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/tenant_screen');
                },
              ),
              ListTile(
                title: const Text('Admin'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/admin_dashboard');
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

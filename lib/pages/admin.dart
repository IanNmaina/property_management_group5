import 'package:flutter/material.dart';

// Admin Dashboard
class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Add/Delete/Update Agent'),
            onTap: () {
              Navigator.pushNamed(context, '/manage_agent');
            },
          ),
          ListTile(
            title: const Text('view agent profile'),
            onTap: () {
              Navigator.pushNamed(context, '/agent');
            },
          ),
        ],
      ),
    );
  }
}

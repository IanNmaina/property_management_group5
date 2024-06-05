import 'package:flutter/material.dart';

// Manage Agent Page
class ManageAgentPage extends StatelessWidget {
  const ManageAgentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Agent'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Add Agent'),
            onTap: () {
              // Add Agent Logic
            },
          ),
          ListTile(
            title: const Text('Edit Agent'),
            onTap: () {
              // Edit Agent Logic
            },
          ),
          ListTile(
            title: const Text('Delete Agent'),
            onTap: () {
              // Delete Agent Logic
            },
          ),
        ],
      ),
    );
  }
}

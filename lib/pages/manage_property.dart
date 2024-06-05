import 'package:flutter/material.dart';

// Manage Property Page
class ManagePropertyPage extends StatelessWidget {
  const ManagePropertyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Property'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Add Property'),
            onTap: () {
              // Add Property Logic
            },
          ),
          ListTile(
            title: const Text('Edit Property'),
            onTap: () {
              // Edit Property Logic
            },
          ),
          ListTile(
            title: const Text('Delete Property'),
            onTap: () {
              // Delete Property Logic
            },
          ),
        ],
      ),
    );
  }
}

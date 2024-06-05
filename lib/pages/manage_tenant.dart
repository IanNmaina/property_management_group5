import 'package:flutter/material.dart';

// Manage Tenant Page
class ManageTenantPage extends StatelessWidget {
  const ManageTenantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Tenant'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Add Tenant'),
            onTap: () {
              // Add Tenant Logic
            },
          ),
          ListTile(
            title: const Text('Edit Tenant'),
            onTap: () {
              // Edit Tenant Logic
            },
          ),
          ListTile(
            title: const Text('Delete Tenant'),
            onTap: () {
              // Delete Tenant Logic
            },
          ),
        ],
      ),
    );
  }
}

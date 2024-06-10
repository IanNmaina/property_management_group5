import 'package:flutter/material.dart';

// Agent Dashboard
class AgentDashboard extends StatelessWidget {
  const AgentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agent Dashboard'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Listings/Tenants Account Status'),
            onTap: () {
              Navigator.pushNamed(context, '/manage_property');
            },
          ),
          ListTile(
            title: const Text('Manage Tenant'),
            onTap: () {
              Navigator.pushNamed(context, '/manage_tenant');
            },
          ),
          ListTile(
            title: const Text('View Properties'),
            onTap: () {
              Navigator.pushNamed(context, '/property_list_screen');
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TenantDashboard extends StatelessWidget {
  const TenantDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tenant Dashboard'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('View Property'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/property_list_screen');
            },
          ),
          const ListTile(
            title: Text('View Lease'),
          ),
          const ListTile(
            title: Text('Pay Rent'),
          ),
          const ListTile(
            title: Text('Submit Request'),
          ),
          const ListTile(
            title: Text('Contact Agent'),
          ),
        ],
      ),
    );
  }
}

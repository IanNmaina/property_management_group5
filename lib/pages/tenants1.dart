// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class TenantPage extends StatelessWidget {
  const TenantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tenant Dashboard',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.green[100],
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.green[900]!, width: 4),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/logo.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Welcome, Tenant!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Actions:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900],
                ),
              ),
              const SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildActionCard(
                    context,
                    icon: Icons.home,
                    label: 'View Property',
                    route: '/home1',
                  ),
                  _buildActionCard(
                    context,
                    icon: Icons.description,
                    label: 'View Lease',
                    route: '/view_lease',
                  ),
                  _buildActionCard(
                    context,
                    icon: Icons.payment,
                    label: 'Pay Rent',
                    route: '/pay_rent',
                  ),
                  _buildActionCard(
                    context,
                    icon: Icons.request_page,
                    label: 'Submit Request',
                    route: '/submit_request',
                  ),
                  _buildActionCard(
                    context,
                    icon: Icons.contact_mail,
                    label: 'Contact Agent',
                    route: '/contact_agent',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String route,
  }) {
    return Card(
      color: Colors.green[700],
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            const SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

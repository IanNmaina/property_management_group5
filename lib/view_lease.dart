import 'package:flutter/material.dart';

class ViewLeasePage extends StatelessWidget {
  const ViewLeasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Lease'),
        backgroundColor: Colors.green[900],
      ),
      body: Container(
        color: Colors.grey[200], // Set background color
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo.png', // Replace with your logo asset
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Properties',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[900],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                _buildSectionTitle('Lease Agreement'),
                _buildLeaseDetails(),
                SizedBox(height: 20),
                _buildSectionTitle('Property Information'),
                _buildPropertyInfo(),
                SizedBox(height: 20),
                _buildSectionTitle('Tenant Information'),
                _buildTenantInfo(),
                SizedBox(height: 20),
                _buildSectionTitle('Lease Documents'),
                _buildLeaseDocuments(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.green[900],
        ),
      ),
    );
  }

  Widget _buildLeaseDetails() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Start Date: 2024-06-01'),
          SizedBox(height: 8),
          Text('End Date: 2025-06-01'),
          SizedBox(height: 8),
          Text('Rent Amount: \$1000/month'),
          SizedBox(height: 8),
          Text('Security Deposit: \$1000'),
        ],
      ),
    );
  }

  Widget _buildPropertyInfo() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Type: Apartment'),
          SizedBox(height: 8),
          Text('Address: 123 Main St'),
          SizedBox(height: 8),
          Text('Bedrooms: 2'),
          SizedBox(height: 8),
          Text('Bathrooms: 2'),
        ],
      ),
    );
  }

  Widget _buildTenantInfo() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name: John Doe'),
          SizedBox(height: 8),
          Text('Contact: john.doe@example.com'),
          SizedBox(height: 8),
          Text('Phone: 123-456-7890'),
        ],
      ),
    );
  }

  Widget _buildLeaseDocuments(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Lease Agreement Document'),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Add logic to download PDF
            },
            child: Text('Download'),
          ),
        ],
      ),
    );
  }
}

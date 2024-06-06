// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:marries_property/styles/colors.dart';

class AgentPage extends StatelessWidget {
  final String agentName;
  final String agentPhone;
  final String agentEmail;
  final String agentBio;
  final String agentImageUrl;

  final List<Map<String, String>> properties = [
    {
      'image': 'assets/images/pic1.png',
      'name': 'Beautiful Family House',
      'location': '123 Main Street, Springfield'
    },
    {
      'image': 'assets/images/pic2.webp',
      'name': 'Modern Apartment',
      'location': '456 Elm Street, Metropolis'
    },
    {
      'image': 'assets/images/pic3.webp',
      'name': 'Cozy Cottage',
      'location': '789 Maple Avenue, Smallville'
    },
  ];

  AgentPage({
    super.key,
    required this.agentName,
    required this.agentPhone,
    required this.agentEmail,
    required this.agentBio,
    required this.agentImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Row(
          children: [
            SizedBox(width: 40), // Add some space to the left
            Text('Agent Profile'),
          ],
        ),
        backgroundColor: AppColors.background,
      ),
      body: Container(
        color: AppColors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(agentImageUrl),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    agentName,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    agentPhone,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    agentEmail,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'About',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  agentBio,
                  style: const TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  'Properties',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                ...properties.map((property) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Image.asset(property['image']!),
                      title: Text(property['name']!),
                      subtitle: Text(property['location']!),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PropertyDetailPage(property: property),
                          ),
                        );
                      },
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PropertyDetailPage extends StatelessWidget {
  final Map<String, String> property;

  const PropertyDetailPage({required this.property, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            SizedBox(width: 40), // Add some space to the left
            Text(property['name']!),
          ],
        ),
        backgroundColor: AppColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(property['image']!),
            SizedBox(height: 16),
            Text(
              property['name']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              property['location']!,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            // Add more property details here
          ],
        ),
      ),
    );
  }
}

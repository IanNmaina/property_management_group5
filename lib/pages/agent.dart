// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:marries_property/styles/colors.dart';

void main() {
  runApp(AgentApp());
}

class AgentApp extends StatelessWidget {
  const AgentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: AppColors.darkblue,
      debugShowCheckedModeBanner: false,
      home: AgentPage(),
    );
  }
}

class AgentPage extends StatelessWidget {
  final String agentName = 'Solomon Ondula';
  final String agentPhone = '+1 234 567 890';
  final String agentEmail = 'solomonondula@gmail.com';
  final String agentBio =
      'With over 10 years of experience in real estate, Solomon has helped numerous clients find their dream homes. He is known for his professionalism, integrity, and dedication to customer satisfaction.';
  final String agentImageUrl = 'assets/images/pic2.webp';

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

  AgentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agent Profile'),
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
                SizedBox(height: 16),
                Center(
                  child: Text(
                    agentName,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8),
                Center(
                  child: Text(
                    agentPhone,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 8),
                Center(
                  child: Text(
                    agentEmail,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'About',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  agentBio,
                  style: TextStyle(fontSize: 16),
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
        title: Text(property['name']!),
        backgroundColor: AppColors.background,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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

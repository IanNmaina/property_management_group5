// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:marries_property/styles/colors.dart';
import 'agent_profile.dart';

class AgentListPage extends StatelessWidget {
  final List<Map<String, String>> agents = [
    {
      'name': 'Solomon Ondula',
      'phone': '+1 234 567 890',
      'email': 'solomonondula@gmail.com',
      'bio':
          'With over 10 years of experience in real estate, Solomon has helped numerous clients find their dream homes. He is known for his professionalism, integrity, and dedication to customer satisfaction.',
      'image': 'assets/images/pic2.webp'
    },
    {
      'name': 'Jane Doe',
      'phone': '+1 987 654 321',
      'email': 'janedoe@gmail.com',
      'bio':
          'Jane is a seasoned real estate agent with a passion for helping clients find the perfect home. Her attention to detail and dedication make her a top choice for anyone looking to buy or sell property.',
      'image': 'assets/images/pic1.png'
    },
    {
      'name': 'John Smith',
      'phone': '+1 555 555 5555',
      'email': 'johnsmith@gmail.com',
      'bio':
          'John has been in the real estate business for over 15 years and has a wealth of experience in both residential and commercial properties. He is known for his expertise and friendly approach.',
      'image': 'assets/images/pic3.webp'
    },
  ];

  AgentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agents'),
        backgroundColor: AppColors.background,
      ),
      body: ListView.builder(
        itemCount: agents.length,
        itemBuilder: (context, index) {
          final agent = agents[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(agent['image']!),
              ),
              title: Text(agent['name']!),
              subtitle: Text(agent['phone']!),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgentPage(
                      agentName: agent['name']!,
                      agentPhone: agent['phone']!,
                      agentEmail: agent['email']!,
                      agentBio: agent['bio']!,
                      agentImageUrl: agent['image']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Agents',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          // Handle navigation to different sections
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/agent_dashboard');
          }
        },
      ),
    );
  }
}

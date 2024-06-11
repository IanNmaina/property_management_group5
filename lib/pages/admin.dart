// import 'package:flutter/material.dart';

// // Admin Dashboard
// class AdminDashboard extends StatelessWidget {
//   const AdminDashboard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Admin Dashboard'),
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             title: const Text('Add/Delete/Update Agent'),
//             onTap: () {
//               Navigator.pushNamed(context, '/manage_agent');
//             },
//           ),
//           ListTile(
//             title: const Text('view agent profile'),
//             onTap: () {
//               Navigator.pushNamed(context, '/agent_profile');
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

// Define the AdminPage widget
class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Admin Dashboard',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green[900],
      ),
      // Make the whole page scrollable
      body: SingleChildScrollView(
        child: Container(
          color: Colors.green[100],
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo section
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
              // Welcome message
              Text(
                'Welcome, Admin!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900],
                ),
              ),
              const SizedBox(height: 20),
              // Actions label
              Text(
                'Actions:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900],
                ),
              ),
              const SizedBox(height: 10),
              // Grid of action buttons
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
                    icon: Icons.person_add,
                    label: 'Add Agent',
                    route: '/add_agent',
                  ),
                  _buildActionCard(
                    context,
                    icon: Icons.person_remove,
                    label: 'Remove Agent',
                    route: '/remove_agent',
                  ),
                  _buildActionCard(
                    context,
                    icon: Icons.person_search,
                    label: 'Update Agent',
                    route: '/update_agent',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build action buttons
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
            Icon(icon, size: 50, color: Colors.amber[700]),
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

class AddAgentPage extends StatelessWidget {
  const AddAgentPage({super.key});

class AddAgentPage extends StatelessWidget {
  const AddAgentPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Agent'),
        backgroundColor: Colors.green[900],
      ),
      body: Center(
        child: Text(
          'Add Agent Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}


// Similarly, create RemoveAgentPage and UpdateAgentPage


class RemoveAgentPage extends StatelessWidget {
  const RemoveAgentPage({super.key});



// Similarly, create RemoveAgentPage and UpdateAgentPage

class RemoveAgentPage extends StatelessWidget {
  const RemoveAgentPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Agent'),
        backgroundColor: Colors.green[900],
      ),
      body: Center(
        child: Text(
          'Remove Agent Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}



class UpdateAgentPage extends StatelessWidget {
  const UpdateAgentPage({super.key});

class UpdateAgentPage extends StatelessWidget {
  const UpdateAgentPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Agent'),
        backgroundColor: Colors.green[900],
      ),
      body: Center(
        child: Text(
          'Add Agent Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}




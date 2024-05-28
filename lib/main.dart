import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Estate App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        // '/': (context) => SplashScreen(),
        // '/login': (context) => LoginPage(),
        '/home': (context) => const HomePage(),
        '/agent_dashboard': (context) =>const  AgentDashboard(),
        '/tenant_dashboard': (context) => const TenantDashboard(),
        '/admin_dashboard': (context) =>const  AdminDashboard(),
        '/manage_property': (context) =>const  ManagePropertyPage(),
        '/manage_tenant': (context) =>const  ManageTenantPage(),
        '/manage_agent': (context) => const ManageAgentPage(),
        '/property_list': (context) => const PropertyListPage(),
        '/property_details': (context) =>
           const PropertyDetailsPage(), // Add this route
      },
    );
  }
}

// SplashScreen (remain unchanged)
class SplashScreen extends StatefulWidget {
   const SplashScreen({super.key});
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}

// LoginPage
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
           const SizedBox(height: 10),
           const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
          const  SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Example user role based on login credentials
                String userRole = 'agent'; // Replace with actual logic

                if (userRole == 'agent') {
                  Navigator.pushReplacementNamed(context, '/agent_dashboard');
                } else if (userRole == 'tenant') {
                  Navigator.pushReplacementNamed(context, '/tenant_dashboard');
                } else if (userRole == 'admin') {
                  Navigator.pushReplacementNamed(context, '/admin_dashboard');
                }
              },
              child:const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

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
            title:const  Text('Manage Tenant'),
            onTap: () {
              Navigator.pushNamed(context, '/manage_tenant');
            },
          ),
        ],
      ),
    );
  }
}

// Tenant Dashboard
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
              Navigator.pushNamed(context, '/property_list');
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

// Admin Dashboard
class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Add/Delete/Update Agent'),
            onTap: () {
              Navigator.pushNamed(context, '/manage_agent');
            },
          ),
        ],
      ),
    );
  }
}

// Manage Property Page
class ManagePropertyPage extends StatelessWidget {
  const ManagePropertyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Manage Property'),
      ),
      body: ListView(
        children: [
          ListTile(
            title:const Text('Add Property'),
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

// Manage Tenant Page
class ManageTenantPage extends StatelessWidget {
  const ManageTenantPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Manage Tenant'),
      ),
      body: ListView(
        children: [
          ListTile(
            title:const  Text('Add Tenant'),
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

// Manage Agent Page
class ManageAgentPage extends StatelessWidget {
  const ManageAgentPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Agent'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Add Agent'),
            onTap: () {
              // Add Agent Logic
            },
          ),
          ListTile(
            title: const Text('Edit Agent'),
            onTap: () {
              // Edit Agent Logic
            },
          ),
          ListTile(
            title:const  Text('Delete Agent'),
            onTap: () {
              // Delete Agent Logic
            },
          ),
        ],
      ),
    );
  }
}

// Property List Page
class PropertyListPage extends StatelessWidget {
  const PropertyListPage({super.key});
  @override
  Widget build(BuildContext context) {
    // For demonstration purposes, we'll use a static category
    final Category category = categories[0];

    return Scaffold(
      appBar: AppBar(
        title: Text('${category.title} Properties'),
      ),
      body: ListView.builder(
        itemCount: category.units.length,
        itemBuilder: (context, index) {
          final unit = category.units[index];
          return ListTile(
            leading: Image.network(unit.imageUrl, width: 100),
            title: Text(unit.title),
            subtitle: Text('\$${unit.price}'),
            onTap: () {
              Navigator.pushNamed(context, '/property_details',
                  arguments: unit);
            },
          );
        },
      ),
    );
  }
}

// Property Details Page
class PropertyDetailsPage extends StatelessWidget {
  const PropertyDetailsPage({super.key});
  @override
  Widget build(BuildContext context) {
    final Unit unit = ModalRoute.of(context)!.settings.arguments as Unit;

    return Scaffold(
      appBar: AppBar(
        title: Text(unit.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(unit.imageUrl),
            Text(unit.title, style: const TextStyle(fontSize: 24)),
            Text('\$${unit.price}', style:const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

// Category and Unit Models
class Category {
  final String title;
  final IconData icon;
  final String route;
  final List<Unit> units;

  Category(
      {required this.title,
      required this.icon,
      required this.route,
      required this.units});
}

class Unit {
  final String title;
  final String imageUrl;
  final int price;

  Unit({required this.title, required this.imageUrl, required this.price});
}

// Sample Data
List<Category> categories = [
  Category(
    title: 'Rent',
    icon: Icons.home,
    route: '/for_rent',
    units: [
      Unit(
          title: 'Apartment for Rent',
          imageUrl: 'https://via.placeholder.com/150',
          price: 1500),
      Unit(
          title: 'House for Rent',
          imageUrl: 'https://via.placeholder.com/150',
          price: 2000),
      Unit(
          title: 'Condo for Rent',
          imageUrl: 'https://via.placeholder.com/150',
          price: 1800),
    ],
  ),
  Category(
    title: 'Sale',
    icon: Icons.monetization_on,
    route: '/for_sale',
    units: [
      Unit(
          title: 'Apartment for Sale',
          imageUrl: 'https://via.placeholder.com/150',
          price: 200000),
      Unit(
          title: 'House for Sale',
          imageUrl: 'https://via.placeholder.com/150',
          price: 300000),
      Unit(
          title: 'Condo for Sale',
          imageUrl: 'https://via.placeholder.com/150',
          price: 250000),
    ],
  ),                      
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real Estate Categories'),
      ),
      body: GridView.builder(
        itemCount: categories.length,
        gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, category.route);
            },
            child: Card(
              elevation: 2.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(category.icon, size: 50),
                  const SizedBox(height: 10),
                  Text(category.title),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

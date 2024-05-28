import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/agent_dashboard': (context) => AgentDashboard(),
        '/tenant_dashboard': (context) => TenantDashboard(),
        '/admin_dashboard': (context) => AdminDashboard(),
        '/manage_property': (context) => ManagePropertyPage(),
        '/manage_tenant': (context) => ManageTenantPage(),
        '/manage_agent': (context) => ManageAgentPage(),
        '/property_list': (context) => PropertyListPage(),
        '/property_details': (context) =>
            PropertyDetailsPage(), // Add this route
      },
    );
  }
}

// SplashScreen (remain unchanged)
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20),
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
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

// HomePage
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Real Estate App'),
      ),
      body: Center(
        child: Text('Welcome to the Real Estate App!'),
      ),
    );
  }
}

// Agent Dashboard
class AgentDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agent Dashboard'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Listings/Tenants Account Status'),
            onTap: () {
              Navigator.pushNamed(context, '/manage_property');
            },
          ),
          ListTile(
            title: Text('Manage Tenant'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tenant Dashboard'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('View Property'),
            onTap: () {
              Navigator.pushNamed(context, '/property_list');
            },
          ),
          ListTile(
            title: Text('View Lease'),
          ),
          ListTile(
            title: Text('Pay Rent'),
          ),
          ListTile(
            title: Text('Submit Request'),
          ),
          ListTile(
            title: Text('Contact Agent'),
          ),
        ],
      ),
    );
  }
}

// Admin Dashboard
class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Add/Delete/Update Agent'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Property'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Add Property'),
            onTap: () {
              // Add Property Logic
            },
          ),
          ListTile(
            title: Text('Edit Property'),
            onTap: () {
              // Edit Property Logic
            },
          ),
          ListTile(
            title: Text('Delete Property'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Tenant'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Add Tenant'),
            onTap: () {
              // Add Tenant Logic
            },
          ),
          ListTile(
            title: Text('Edit Tenant'),
            onTap: () {
              // Edit Tenant Logic
            },
          ),
          ListTile(
            title: Text('Delete Tenant'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Agent'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Add Agent'),
            onTap: () {
              // Add Agent Logic
            },
          ),
          ListTile(
            title: Text('Edit Agent'),
            onTap: () {
              // Edit Agent Logic
            },
          ),
          ListTile(
            title: Text('Delete Agent'),
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
            Text(unit.title, style: TextStyle(fontSize: 24)),
            Text('\$${unit.price}', style: TextStyle(fontSize: 20)),
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

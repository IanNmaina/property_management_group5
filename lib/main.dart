import 'package:flutter/material.dart';
import 'tenant.dart'; // Import the tenant.dart file

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
        '/for_rent': (context) => PropertyListPage(category: categories[0]),
        '/for_sale': (context) => PropertyListPage(category: categories[1]),
        '/tenant': (context) => TenantPage(), // Add this line
      },
    );
  }
}

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
                // Handle login logic
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class Category {
  final String title;
  final IconData icon;
  final String route;
  final List<Unit> units;

  Category({
    required this.title,
    required this.icon,
    required this.route,
    required this.units,
  });
}

class Unit {
  final String title;
  final String imageUrl;
  final int price;

  Unit({required this.title, required this.imageUrl, required this.price});
}

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
  // Add Tenant category
  Category(
    title: 'Tenant',
    icon: Icons.person,
    route: '/tenant',
    units: [],
  ),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Real Estate Categories'),
      ),
      body: GridView.builder(
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                  SizedBox(height: 10),
                  Text(category.title),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PropertyListPage extends StatelessWidget {
  final Category category;

  PropertyListPage({required this.category});

  @override
  Widget build(BuildContext context) {
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
              // Handle tapping on unit
            },
          );
        },
      ),
    );
  }
}

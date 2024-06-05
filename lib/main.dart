import 'package:flutter/material.dart';
import 'tenant.dart'; // Import the tenant.dart file
import 'view_lease.dart'; // Import the view_lease.dart file
import 'pay_rent.dart'; // Import the pay_rent.dart file

//import 'screen/property_list_page.dart';
//import 'models/models.dart';
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
<<<<<<< HEAD
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/for_rent': (context) => PropertyListPage(category: categories[0]),
        '/for_sale': (context) => PropertyListPage(category: categories[1]),
        '/tenant': (context) => TenantPage(), // Add this line
        '/view_lease': (context) => ViewLeasePage(), // Add this line
        '/pay_rent': (context) => PayRentPage(), // Add this line
        
=======
>>>>>>> 84b4833259cce00aeec85cbf6bb2bd41c6d5c851
      },
      debugShowCheckedModeBanner: false, // Remove debug banner
    );
  }
}

// SplashScreen (remain unchanged)
class SplashScreen extends StatefulWidget {

}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

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

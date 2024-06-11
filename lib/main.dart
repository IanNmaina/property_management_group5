import 'package:flutter/material.dart';
import 'package:marries_property/pages/tenants1.dart';
import 'package:marries_property/pages/admin.dart';
import 'pages/login.dart';
import 'pages/homepage.dart';
import 'pages/agents.dart';
import 'pages/admin.dart';
import 'pages/manage_property.dart';
import 'pages/manage_tenant.dart';
import 'pages/manage_agent.dart';
import 'pages/signup.dart';
import 'pages/forgot_password.dart';
import 'pages/property_list_screen.dart';

void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure Flutter binding is initialized

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
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/agent_dashboard': (context) => const AgentDashboard(),
        '/admin_dashboard': (context) => const AdminPage(), // Update this route
        '/manage_property': (context) => const ManagePropertyPage(),
        '/manage_tenant': (context) => const ManageTenantPage(),
        '/manage_agent': (context) => const ManageAgentPage(),
        '/signup': (context) => SignupPage(),
        '/forgot_password': (context) => const ForgotPasswordPage(),
        '/property_list_screen': (context) => const PropertyListScreen(),
        '/tenant_screen': (context) => const TenantPage(),
        // Add routes for the admin actions
        '/add_agent': (context) => const AddAgentPage(),
        '/remove_agent': (context) => const RemoveAgentPage(),
        '/update_agent': (context) => const UpdateAgentPage(),
      },
      debugShowCheckedModeBanner: false, // Remove debug banner
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
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

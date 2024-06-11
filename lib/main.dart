// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_print, library_private_types_in_public_api, prefer_const_constructors_in_immutables, unused_import, duplicate_ignore, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:marries_property/pages/tenants1.dart';
import 'package:marries_property/pages/admin.dart';
import 'pages/login.dart';
import 'pages/homepage.dart';
import 'pages/agents.dart';
import 'pages/manage_property.dart';
import 'pages/manage_tenant.dart';
import 'pages/manage_agent.dart';
import 'pages/signup.dart';
import 'pages/forgot_password.dart';
import 'pages/property_list_screen.dart';
import 'pages/agent_profile.dart';



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
      debugShowCheckedModeBanner: false, //changed
      title: 'Real Estate App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Urbanist',
        //scaffoldBackgroundColor: AppColors.background,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/agent_dashboard': (context) => const AgentDashboard(),
        '/admin_dashboard': (context) =>
            const AdminDashboard(), // Update this route
        '/manage_property': (context) => const ManagePropertyPage(),
        '/manage_tenant': (context) => const ManageTenantPage(),
        '/manage_agent': (context) => const ManageAgentPage(),
        '/signup': (context) => SignupPage(),
        '/forgot_password': (context) => const ForgotPasswordPage(),
        '/property_list_screen': (context) => const PropertyListScreen(),
        '/tenant_screen': (context) => const TenantPage(),
      },
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/property_list') {
      //     final units = settings.arguments as List<Unit>;
      //     return MaterialPageRoute(
      //       builder: (context) {
      //         return PropertyListPage();
      //       },
      //     );
      //   }
      //   return null;
      // },
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

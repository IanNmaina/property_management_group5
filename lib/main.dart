import 'package:flutter/material.dart';
import 'package:marries_property/pages/tenants1.dart';
import 'pages/login.dart';
import 'pages/homepage.dart';
import 'pages/agents.dart';
//import 'pages/tenants.dart';
import 'pages/admin.dart';
import 'pages/manage_property.dart';
import 'pages/manage_tenant.dart';
import 'pages/manage_agent.dart';
//import 'pages/properties_list.dart';
// import 'classes/unit_category.dart';
import 'pages/signup.dart';
import 'pages/forgot_password.dart';
import 'pages/property_list_screen.dart';

//import 'models/models.dart';

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
        //'/tenant_dashboard': (context) => const TenantDashboard(),
        '/admin_dashboard': (context) => const AdminDashboard(),
        '/manage_property': (context) => const ManagePropertyPage(),
        '/manage_tenant': (context) => const ManageTenantPage(),
        '/manage_agent': (context) => const ManageAgentPage(),
        // '/property_list': (context) => const PropertyListPage(),
        // '/property_details': (context) => const PropertyDetailsPage(),
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

// SplashScreen (remain unchanged)
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
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

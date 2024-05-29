import 'package:flutter/material.dart';
import 'pages/property_list.dart';
import 'classes/unit_category.dart';
//import 'models/models.dart';
void main() {
  runApp(MyApp());
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
       '/property_list': (context) => const PropertyListPage(
             units: [],
           ),
       '/property_details': (context) => const PropertyDetailsPage(),
     },
     onGenerateRoute: (settings) {
       if (settings.name == '/property_list') {
         final units = settings.arguments as List<Unit>;
         return MaterialPageRoute(
           builder: (context) {
             return PropertyListPage(units: units);
           },
         );
       }
       return null;
     },
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
   Future.delayed(const Duration(seconds: 3), () {
     Navigator.pushReplacementNamed(context, '/property_list');
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






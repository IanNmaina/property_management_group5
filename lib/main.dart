import 'package:flutter/material.dart';
import 'pages/property_list.dart';
//import 'screen/property_list_page.dart';
//import 'models/models.dart';
void main() {
  // ignore: unused_local_variable

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
       //'/property_list_page': (context) => PropertyListPage(),
       '/property_details_page': (context) => const PropertyDetailsPage(),
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
     Navigator.pushReplacementNamed(context, '/property_detail_page');
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






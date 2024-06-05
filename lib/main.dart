// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_print, library_private_types_in_public_api, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';

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

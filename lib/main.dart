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
      title: 'Real Estate App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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

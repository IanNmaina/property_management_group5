import 'package:flutter/material.dart';

// HomePage
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Real Estate App'),
      ),
      body:const Center(
        child: Text('Welcome to the Real Estate App!'),
      ),
    );
  }
}
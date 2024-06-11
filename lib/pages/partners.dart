// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';


class PartnerPage extends StatefulWidget {
  const PartnerPage({super.key});

  @override
  _PartnerPageState createState() => _PartnerPageState();
}


class _PartnerPageState extends State<PartnerPage> {
  final List<String> partnerNames = [
    'Samsung Home Appliances',
    'XYZ Corporation',
    'ABC Realty',
    'Pampers Company Ltd',
    'LG',
    'Sony',
  ];


  int _currentPageIndex = 0;


  void _goToPreviousPage() {
    setState(() {
      if (_currentPageIndex > 0) {
        _currentPageIndex--;
      }
    });
  }


  void _goToNextPage() {
    setState(() {
      if (_currentPageIndex < partnerNames.length - 1) {
        _currentPageIndex++;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA387F5),
      appBar: AppBar(
        title: const Text(
          'Our Partners',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.purple[700],
              child: Center(
                child: Text(
                  partnerNames[_currentPageIndex],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: _goToPreviousPage,
                icon: Icon(Icons.arrow_back, color: Colors.white),
              ),
              IconButton(
                onPressed: _goToNextPage,
                icon: Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}




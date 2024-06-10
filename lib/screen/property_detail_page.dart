import 'package:flutter/material.dart';
import 'package:marries_property/classes/classes.dart';

class PropertyDetailPage extends StatelessWidget {
  final Property property;

  const PropertyDetailPage({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(property.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(property.imageUrl),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    property.title,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '\$${property.price.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    property.description ?? 'No description available',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

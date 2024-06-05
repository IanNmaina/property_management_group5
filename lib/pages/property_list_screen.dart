import 'package:flutter/material.dart';
import '../services/property_service.dart';
import '../models/property.dart';

class PropertyListScreen extends StatefulWidget {
  const PropertyListScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PropertyListScreenState createState() => _PropertyListScreenState();
}

class _PropertyListScreenState extends State<PropertyListScreen> {
  final PropertyService _propertyService = PropertyService();
  late Future<List<Property>> _futureProperties;

  @override
  void initState() {
    super.initState();
    _futureProperties = _propertyService.getProperties();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Properties'),
      ),
      body: FutureBuilder<List<Property>>(
        future: _futureProperties,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No properties found'));
          } else {
            final properties = snapshot.data!;
            return ListView.builder(
              itemCount: properties.length,
              itemBuilder: (context, index) {
                final property = properties[index];
                return ListTile(
                  leading: Image.network(property.image),
                  title: Text(property.location),
                  subtitle: Text('\$${property.price}'),
                  onTap: () {
                    // Handle property tap
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}

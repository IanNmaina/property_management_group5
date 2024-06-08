import 'package:flutter/material.dart';
import '../services/property_service.dart';
import '../models/property.dart';
import '../forms/add_property.dart';

class PropertyListScreen extends StatefulWidget {
  const PropertyListScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PropertyListScreenState createState() => _PropertyListScreenState();
}

class _PropertyListScreenState extends State<PropertyListScreen> {
  late Future<List<Property>> futureProperties;

  @override
  void initState() {
    super.initState();
    futureProperties = PropertyService().getProperties();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Properties'),
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder<List<Property>>(
        future: futureProperties,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No properties found'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Property property = snapshot.data![index];
                return Card(
                  child: ListTile(
                    leading: Image.network(property.image),
                    title: Text(property.description),
                    subtitle: Text('\$${property.price.toString()}'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle navigation to property details
                    },
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddPropertyPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

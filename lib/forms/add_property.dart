// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:marries_property/services/property_service.dart';
import '../models/property.dart';

class AddPropertyPage extends StatefulWidget {
  const AddPropertyPage({super.key});

  @override
  _AddPropertyPageState createState() => _AddPropertyPageState();
}

class _AddPropertyPageState extends State<AddPropertyPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  bool _forSale = false;
  bool _forRent = false;

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      Property newProperty = Property(
        id: 0,
        image: _imageController.text,
        price: double.parse(_priceController.text),
        description: _descriptionController.text,
        forSale: _forSale,
        forRent: _forRent,
        location: _locationController.text,
        agentId: 1, // Update this with the actual agent ID
      );

      await PropertyService().addProperty(newProperty);
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Property'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _imageController,
                decoration: const InputDecoration(labelText: 'Image URL'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an image URL';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(labelText: 'Price'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a price';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _locationController,
                decoration: const InputDecoration(labelText: 'Location'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a location';
                  }
                  return null;
                },
              ),
              SwitchListTile(
                title: const Text('For Sale'),
                value: _forSale,
                onChanged: (bool value) {
                  setState(() {
                    _forSale = value;
                  });
                },
              ),
              SwitchListTile(
                title: const Text('For Rent'),
                value: _forRent,
                onChanged: (bool value) {
                  setState(() {
                    _forRent = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Add Property'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

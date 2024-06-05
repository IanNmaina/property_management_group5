import 'package:flutter/material.dart';
import 'package:marries_property/classes/classes.dart';
import 'package:marries_property/screen/property_detail_page.dart';
// ignore: unused_import
import 'package:marries_property/screen/property_list_page.dart';

class PropertyListItem extends StatelessWidget {
  final Property property;

  PropertyListItem({required this.property});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Image.network(
          property.imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        title: Text(property.title),
        subtitle: Text('\$${property.price.toStringAsFixed(2)}'),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PropertyDetailPage(property: property),
            ),
          );
        },
      ),
    );
  }
}

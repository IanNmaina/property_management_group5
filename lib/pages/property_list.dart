import 'package:flutter/material.dart';
import 'package:marries_property/classes/unit_category.dart';


// Property List Page
class PropertyListPage extends StatelessWidget {
 final List<Unit> units;


 const PropertyListPage({super.key, required this.units});


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Properties'),
     ),
     body: ListView.builder(
       itemCount: units.length,
       itemBuilder: (context, index) {
         final unit = units[index];
         return ListTile(
           leading: Image.network(unit.imageUrl, width: 100),
           title: Text(unit.title),
           subtitle: Text('\$${unit.price}'),
           onTap: () {
             Navigator.pushNamed(
               context,
               '/property_details',
               arguments: unit,
             );
           },
         );
       },
     ),
   );
 }
}


// Property Details Page
class PropertyDetailsPage extends StatelessWidget {
 const PropertyDetailsPage({super.key});


 @override
 Widget build(BuildContext context) {
   final Unit unit = ModalRoute.of(context)!.settings.arguments as Unit;


   return Scaffold(
     appBar: AppBar(
       title: Text(unit.title),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Image.network(unit.imageUrl),
           Text(unit.title, style: const TextStyle(fontSize: 24)),
           Text('\$${unit.price}', style: const TextStyle(fontSize: 20)),
         ],
       ),
     ),
   );
 }
}





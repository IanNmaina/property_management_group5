import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/property.dart';

class PropertyService {
  static const String baseUrl = 'http://192.168.100.128:3000';

  Future<List<Property>> getProperties() async {
    final response = await http.get(Uri.parse('$baseUrl/properties'));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      return body.map((dynamic item) => Property.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load properties');
    }
  }

  Future<void> addProperty(Property property) async {
    final response = await http.post(
      Uri.parse('$baseUrl/properties'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'image': property.image,
        'price': property.price,
        'description': property.description,
        'for_sale': property.forSale,
        'for_rent': property.forRent,
        'location': property.location,
        'agent_id': property.agentId,
      }),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to add property');
    }
  }
}


class Property {
  String id;
  String title;
  String description;
  String imageUrl;
  double price;

  Property({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}


class Tenant {
  String name;
  String email;

  Tenant(this.name, this.email);
}

class Agent {
  String name;
  String email;

  Agent(this.name, this.email);
}

// Sample Data
List<Property> properties = [
  Property(
    id: 'p1',
    title: 'Modern Apartment',
    description: 'A beautiful modern apartment in the city center.',
    imageUrl: 'https://example.com/images/property1.jpg',
    price: 1200.00,
  ),
  Property(
    id: 'p2',
    title: 'Cozy House',
    description: 'A cozy house in a quiet neighborhood.',
    imageUrl: 'https://example.com/images/property2.jpg',
    price: 850.00,
  ),
  // Add more properties as needed
];

class Property {
  final int id;
  final String image;
  final double price;
  final String description;
  final bool forSale;
  final bool forRent;
  final String location;
  final int agentId;

  Property({
    required this.id,
    required this.image,
    required this.price,
    required this.description,
    required this.forSale,
    required this.forRent,
    required this.location,
    required this.agentId,
  });

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      id: json['id'],
      image: json['image'],
      price: json['price'] is double
          ? json['price']
          : double.parse(json['price'].toString()),
      description: json['description'],
      forSale: json['for_sale'] == 1,
      forRent: json['for_rent'] == 1,
      location: json['location'],
      agentId: json['agent_id'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'price': price,
      'description': description,
      'for_sale': forSale ? 1 : 0,
      'for_rent': forRent ? 1 : 0,
      'location': location,
      'agent_id': agentId,
    };
  }
}

class Property {
  String title;
  String imageUrl;
  int price;

  Property(this.title, this.imageUrl, this.price);

  String? get description => null;
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

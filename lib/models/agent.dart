// ignore_for_file: non_constant_identifier_names

class Agent {
  final int agent_id;
  final String image;
  final String fullname;
  final String description;
  final double phonenumber;
  final String email;

  Agent({
    required this.agent_id,
    required this.image,
    required this.fullname,
    required this.description,
    required this.phonenumber,
    required this.email,
  });
  
  factory Agent.fromJson(Map<String, dynamic> json) {
    return Agent(
      agent_id: json['agent_id'],
      image: json['image'],
      fullname: json['fullname'],
      description: json['description'],
      phonenumber: json['phonenumber'],
      email: json['email'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'agent_id': agent_id,
      'image': image,
      'fullname': fullname,
      'description': description,
      'phonenumber': phonenumber,
      'email': email,
    };
  }
}

// ignore_for_file: avoid_print, unused_local_variable

import 'dart:io';

import 'package:marries_property/classes/classes.dart';

void main() {
  print("Homepage");
  stdout.write("Enter your role (agent/tenant/admin): ");
  String? userRole = stdin.readLineSync();

  if (userRole == 'agent') {
    agentDashboard();
  } else if (userRole == 'tenant') {
    tenantDashboard();
  } else if (userRole == 'admin') {
    adminDashboard();
  }
}

void agentDashboard() {
  print("Agent Dashboard");
  print("Listings/Tenants account status");
  stdout.write("Enter 'ADD EDIT DELETE property' or 'Manage Tenant': ");
  String? userInput = stdin.readLineSync();

  if (userInput == 'ADD EDIT DELETE property') {
    manageProperty();
  } else if (userInput == 'Manage Tenant') {
    manageTenant();
  }
}

void tenantDashboard() {
  print("Tenant Dashboard");
  print("View property");
  print("View Lease");
  print("Pay Rent");
  print("Submit request");
  print("Contact Agent");
}

void adminDashboard() {
  print("Admin Dashboard");
  stdout.write("Enter 'ADD Delete Update Agent': ");
  String? userInput = stdin.readLineSync();

  if (userInput == 'ADD Delete Update Agent') {
    manageAgents();
  }
}

void manageProperty() {
  print("Manage Property");
  stdout.write("Enter 'ADD' or 'EDIT' or 'DELETE': ");
  String? userInput = stdin.readLineSync();

  if (userInput == 'ADD') {
    addProperty();
  } else if (userInput == 'EDIT') {
    editProperty();
  } else if (userInput == 'DELETE') {
    deleteProperty();
  }
}

void addProperty() {
  stdout.write("Enter property title: ");
  String? title = stdin.readLineSync();
  stdout.write("Enter property image URL: ");
  String? imageUrl = stdin.readLineSync();
  stdout.write("Enter property price: ");
  int? price = int.parse(stdin.readLineSync()!);

  Property property = Property(title!, imageUrl!, price);
  print("Property added successfully");
}

void editProperty() {
  stdout.write("Enter property ID: ");
  String? propertyId = stdin.readLineSync();
  // Find property in properties_list
  // Update property details
  print("Property updated successfully");
}

void deleteProperty() {
  stdout.write("Enter property ID: ");
  String? propertyId = stdin.readLineSync();
  // Find property in properties_list
  // Delete property from properties_list
  print("Property deleted successfully");
}

void manageTenant() {
  print("Manage Tenant");
  stdout.write("Enter 'ADD' or 'EDIT' or 'DELETE': ");
  String? userInput = stdin.readLineSync();

  if (userInput == 'ADD') {
    addTenant();
  } else if (userInput == 'EDIT') {
    editTenant();
  } else if (userInput == 'DELETE') {
    deleteTenant();
  }
}

void addTenant() {
  stdout.write("Enter tenant name: ");
  String? name = stdin.readLineSync();
  stdout.write("Enter tenant email: ");
  String? email = stdin.readLineSync();

  Tenant tenant = Tenant(name!, email!);
  print("Tenant added successfully");
}

void editTenant() {
  stdout.write("Enter tenant ID: ");
  String? tenantId = stdin.readLineSync();
  // Find tenant in tenants_list
  // Update tenant details
  print("Tenant updated successfully");
}

void deleteTenant() {
  stdout.write("Enter tenant ID: ");
  String? tenantId = stdin.readLineSync();
  // Find tenant in tenants_list
  // Delete tenant from tenants_list
  print("Tenant deleted successfully");
}

void manageAgents() {
  print("Manage Agents");
  stdout.write("Enter 'ADD' or 'DELETE' or 'UPDATE': ");
  String? userInput = stdin.readLineSync();

  if (userInput == 'ADD') {
    addAgent();
  } else if (userInput == 'DELETE') {
    deleteAgent();
  } else if (userInput == 'UPDATE') {
    updateAgent();
  }
}

void addAgent() {
  stdout.write("Enter agent name: ");
  String? name = stdin.readLineSync();
  stdout.write("Enter agent email: ");
  String? email = stdin.readLineSync();

  Agent agent = Agent(name!, email!);
  print("Agent added successfully");
}

void deleteAgent() {
  stdout.write("Enter agent ID: ");
  String? agentId = stdin.readLineSync();
  // Find agent in agents_list
  // Delete agent from agents_list
  print("Agent deleted successfully");
}

void updateAgent() {
  stdout.write("Enter agent ID: ");
  String? agentId = stdin.readLineSync();
  // Find agent in agents_list
  // Update agent details
  print("Agent updated successfully");
}

// Category and Unit Models
import 'package:flutter/material.dart';

class Category {
  final String title;
  final IconData icon;
  final String route;
  final List<Unit> units;

  Category(
      {required this.title,
      required this.icon,
      required this.route,
      required this.units});
}

class Unit {
  final String title;
  final String imageUrl;
  final int price;

  Unit({required this.title, required this.imageUrl, required this.price});
}

// Sample Data
List<Category> categories = [
  Category(
    title: 'Rent',
    icon: Icons.home,
    route: '/for_rent',
    units: [
      Unit(
          title: 'Apartment for Rent',
          imageUrl: 'https://via.placeholder.com/150',
          price: 1500),
      Unit(
          title: 'House for Rent',
          imageUrl: 'https://via.placeholder.com/150',
          price: 2000),
      Unit(
          title: 'Condo for Rent',
          imageUrl: 'https://via.placeholder.com/150',
          price: 1800),
    ],
  ),
  Category(
    title: 'Sale',
    icon: Icons.monetization_on,
    route: '/for_sale',
    units: [
      Unit(
          title: 'Apartment for Sale',
          imageUrl: 'https://via.placeholder.com/150',
          price: 200000),
      Unit(
          title: 'House for Sale',
          imageUrl: 'https://via.placeholder.com/150',
          price: 300000),
      Unit(
          title: 'Condo for Sale',
          imageUrl: 'https://via.placeholder.com/150',
          price: 250000),
    ],
  ),
];

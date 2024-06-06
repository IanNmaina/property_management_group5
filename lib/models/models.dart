import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'real_estate.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE properties (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        imageUrl BLOB,
        price INTEGER
      )
    ''');

    await db.execute('''
      CREATE TABLE tenants (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        email TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE agents (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        email TEXT
      )
    ''');
  }

  // CRUD operations for Property
  Future<int> addProperty(Property property) async {
    final db = await database;
    return await db.insert('properties', property.toMap());
  }

  Future<List<Property>> getProperties() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('properties');

    return List.generate(maps.length, (i) {
      return Property.fromMap(maps[i]);
    });
  }

  Future<int> updateProperty(Property property) async {
    final db = await database;
    return await db.update(
      'properties',
      property.toMap(),
      where: 'id = ?',
      whereArgs: [property.id],
    );
  }

  Future<int> deleteProperty(int id) async {
    final db = await database;
    return await db.delete(
      'properties',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // CRUD operations for Tenant
  Future<int> addTenant(Tenant tenant) async {
    final db = await database;
    return await db.insert('tenants', tenant.toMap());
  }

  Future<List<Tenant>> getTenants() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('tenants');

    return List.generate(maps.length, (i) {
      return Tenant.fromMap(maps[i]);
    });
  }

  Future<int> updateTenant(Tenant tenant) async {
    final db = await database;
    return await db.update(
      'tenants',
      tenant.toMap(),
      where: 'id = ?',
      whereArgs: [tenant.id],
    );
  }

  Future<int> deleteTenant(int id) async {
    final db = await database;
    return await db.delete(
      'tenants',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // CRUD operations for Agent
  Future<int> addAgent(Agent agent) async {
    final db = await database;
    return await db.insert('agents', agent.toMap());
  }

  Future<List<Agent>> getAgents() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('agents');

    return List.generate(maps.length, (i) {
      return Agent.fromMap(maps[i]);
    });
  }

  Future<int> updateAgent(Agent agent) async {
    final db = await database;
    return await db.update(
      'agents',
      agent.toMap(),
      where: 'id = ?',
      whereArgs: [agent.id],
    );
  }

  Future<int> deleteAgent(int id) async {
    final db = await database;
    return await db.delete(
      'agents',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}

// Property Model
class Property {
  final int? id;
  final String title;
  final String imageUrl;
  final int price;

  Property(
      {this.id,
      required this.title,
      required this.imageUrl,
      required this.price});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'price': price,
    };
  }

  static Property fromMap(Map<String, dynamic> map) {
    return Property(
      id: map['id'],
      title: map['title'],
      imageUrl: map['imageUrl'],
      price: map['price'],
    );
  }
}

// Tenant Model
class Tenant {
  final int? id;
  final String name;
  final String email;

  Tenant({this.id, required this.name, required this.email});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }

  static Tenant fromMap(Map<String, dynamic> map) {
    return Tenant(
      id: map['id'],
      name: map['name'],
      email: map['email'],
    );
  }
}

// Agent Model
class Agent {
  final int? id;
  final String name;
  final String email;

  Agent({this.id, required this.name, required this.email});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }

  static Agent fromMap(Map<String, dynamic> map) {
    return Agent(
      id: map['id'],
      name: map['name'],
      email: map['email'],
    );
  }
}

import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Set2Easy02(),
    );
  }
}

class Set2Easy02 extends StatelessWidget {
  const Set2Easy02({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {"name": myName, "icon": Icons.person},
      {"name": myRollNumber, "icon": Icons.numbers},
      {"name": myCity, "icon": Icons.location_city},
      {"name": myCollegeName, "icon": Icons.school},
      {"name": myActualCareerGoal, "icon": Icons.work},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(items[index]['icon']),
            title: Text(items[index]['name']),
          );
        },
      ),
    );
  }
}

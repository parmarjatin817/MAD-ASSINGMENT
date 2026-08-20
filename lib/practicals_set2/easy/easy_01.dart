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
      home: const Set2Easy01(),
    );
  }
}

class Set2Easy01 extends StatelessWidget {
  const Set2Easy01({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> names = [
      myName,
      "Amit",
      "Priya",
      "Suresh",
      "Deep",
      "Neha",
      "Rohan",
      "Sneha",
      "Vikram",
      "Anjali"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Name List - $myName'),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  final String name;
  final int number;

  const StudentCard({
    super.key,
    required this.name,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 5,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.primaries[number % Colors.primaries.length],
          child: Text(
            '$number',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text('Flutter Student'),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.blue,
        ),
      ),
    );
  }
}

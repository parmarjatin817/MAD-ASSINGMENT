import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Easy10());
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.indigo),
      ),
    );
  }
}

class Easy10 extends StatelessWidget {
  const Easy10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Reusable Widget')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(title: 'Personal Information'),
              Text('Name: $myName'),
              Text('College: $myCollegeName'),
              const SizedBox(height: 20),
              const SectionTitle(title: 'Academic Career'),
              Text('Course: $myCourse'),
              Text('Career Goal: $myActualCareerGoal'),
            ],
          ),
        ),
      ),
    );
  }
}

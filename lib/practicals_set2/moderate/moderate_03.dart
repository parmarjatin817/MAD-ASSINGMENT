import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

class Student {
  final String name;
  final String rollNo;
  final Map<String, int> marks;

  Student(this.name, this.rollNo, this.marks);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Set2Moderate03(),
    );
  }
}

class Set2Moderate03 extends StatelessWidget {
  const Set2Moderate03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final student = Student(myName, myRollNumber, mySubjectMarks);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(student: student),
              ),
            );
          },
          child: const Text('View Student Details'),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Student student;

  const DetailScreen({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${student.name}', style: const TextStyle(fontSize: 18)),
            Text('Roll No: ${student.rollNo}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            const Text('Marks:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...student.marks.entries.map((e) => Text('${e.key}: ${e.value}')),
          ],
        ),
      ),
    );
  }
}

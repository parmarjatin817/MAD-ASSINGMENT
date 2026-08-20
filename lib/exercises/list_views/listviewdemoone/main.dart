import 'package:flutter/material.dart';
import 'student_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student List',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Student List'),
          backgroundColor: Colors.blue,
        ),
        body: const StudentList(),
      ),
    );
  }
}

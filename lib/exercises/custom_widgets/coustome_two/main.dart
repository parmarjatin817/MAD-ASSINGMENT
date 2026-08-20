import 'package:flutter/material.dart';
import 'student_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widget Example"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: const [
            StudentCard(
              name: "Rahul Patel",
              course: "BCA",
              enrollment: "24BCA101",
              color: Colors.blue,
            ),
            SizedBox(height: 15),
            StudentCard(
              name: "Priya Shah",
              course: "B.Sc. IT",
              enrollment: "24BIT102",
              color: Colors.green,
            ),
            SizedBox(height: 15),
            StudentCard(
              name: "Amit Kumar",
              course: "MCA",
              enrollment: "24MCA103",
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
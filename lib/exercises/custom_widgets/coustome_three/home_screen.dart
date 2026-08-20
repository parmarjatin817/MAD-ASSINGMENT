import 'package:flutter/material.dart';
import 'textfield_widget.dart';
import 'student_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController courseController = TextEditingController();
  final TextEditingController enrollmentController = TextEditingController();

  String name = "";
  String course = "";
  String enrollment = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Information"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              controller: nameController,
              label: "Enter Student Name",
              hint: "e.g. Rahul Patel",
              icon: Icons.person,
            ),
            const SizedBox(height: 15),
            CustomTextField(
              controller: courseController,
              label: "Enter Course",
              hint: "e.g. BCA",
              icon: Icons.school,
            ),
            const SizedBox(height: 15),
            CustomTextField(
              controller: enrollmentController,
              label: "Enrollment Number",
              hint: "e.g. 24BCA101",
              icon: Icons.badge,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = nameController.text;
                    course = courseController.text;
                    enrollment = enrollmentController.text;
                  });
                },
                child: const Text(
                  "Show Student Card",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            if (name.isNotEmpty)
              StudentCard(
                name: name,
                course: course,
                enrollment: enrollment,
              ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'student_model.dart';
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
  List<Student> students = [];

  @override
  void dispose() {
    nameController.dispose();
    courseController.dispose();
    enrollmentController.dispose();
    super.dispose();
  }

  void addStudent() {
    if (nameController.text.isNotEmpty &&
        courseController.text.isNotEmpty &&
        enrollmentController.text.isNotEmpty) {
      setState(() {
        students.add(
          Student(
            name: nameController.text,
            course: courseController.text,
            enrollment: enrollmentController.text,
          ),
        );
      });
      nameController.clear();
      courseController.clear();
      enrollmentController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter all student details'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Management'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Student Name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: courseController,
              decoration: const InputDecoration(
                labelText: 'Course',
                prefixIcon: Icon(Icons.school),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: enrollmentController,
              decoration: const InputDecoration(
                labelText: 'Enrollment Number',
                prefixIcon: Icon(Icons.badge),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: addStudent,
                icon: const Icon(Icons.add),
                label: const Text('Add Student'),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  Student student = students[index];
                  return StudentCard(
                    student: student,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

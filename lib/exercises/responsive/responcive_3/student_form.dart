import 'package:flutter/material.dart';
import 'student_model.dart';

class StudentForm extends StatefulWidget {
  final Function(StudentModel) onAddStudent;

  const StudentForm({
    super.key,
    required this.onAddStudent,
  });

  @override
  State<StudentForm> createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController courseController = TextEditingController();
  final TextEditingController enrollmentController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    courseController.dispose();
    enrollmentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool isMobile = screenWidth < 600;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 15 : 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Student Information",
              style: TextStyle(
                fontSize: isMobile ? 22 : 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Student Name",
                hintText: "Enter Student Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: courseController,
              decoration: const InputDecoration(
                labelText: "Course",
                hintText: "Enter Course",
                prefixIcon: Icon(Icons.school),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: enrollmentController,
              decoration: const InputDecoration(
                labelText: "Enrollment Number",
                hintText: "Enter Enrollment Number",
                prefixIcon: Icon(Icons.badge),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: isMobile ? double.infinity : 250,
              height: 50,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text(
                  "Add Student",
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  if (nameController.text.isEmpty ||
                      courseController.text.isEmpty ||
                      enrollmentController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please fill all fields"),
                      ),
                    );
                    return;
                  }

                  StudentModel student = StudentModel(
                    name: nameController.text,
                    course: courseController.text,
                    enrollment: enrollmentController.text,
                  );

                  widget.onAddStudent(student);

                  nameController.clear();
                  courseController.clear();
                  enrollmentController.clear();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

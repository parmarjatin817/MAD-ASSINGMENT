import 'package:flutter/material.dart';
import 'student_form.dart';
import 'student_card.dart';
import 'student_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StudentModel> studentList = [];

  void addStudent(StudentModel student) {
    setState(() {
      studentList.add(student);
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool isMobile = screenWidth < 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic Responsive UI"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(isMobile ? 10 : 20),
        child: Column(
          children: [
            StudentForm(
              onAddStudent: addStudent,
            ),
            const SizedBox(height: 20),
            Text(
              "Student List",
              style: TextStyle(
                fontSize: isMobile ? 22 : 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: studentList.isEmpty
                  ? const Center(
                      child: Text(
                        "No Student Added",
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  : ListView.builder(
                      itemCount: studentList.length,
                      itemBuilder: (context, index) {
                        return StudentCard(
                          student: studentList[index],
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

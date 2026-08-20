import 'package:flutter/material.dart';
import 'student_model.dart';

class StudentCard extends StatelessWidget {
  final StudentModel student;

  const StudentCard({
    super.key,
    required this.student,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool isMobile = screenWidth < 600;

    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            CircleAvatar(
              radius: isMobile ? 28 : 35,
              backgroundColor: Colors.blue.shade100,
              child: Icon(
                Icons.person,
                size: isMobile ? 30 : 38,
                color: Colors.blue,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    student.name,
                    style: TextStyle(
                      fontSize: isMobile ? 18 : 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(
                        Icons.school,
                        color: Colors.green,
                        size: 18,
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          student.course,
                          style: TextStyle(
                            fontSize: isMobile ? 14 : 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(
                        Icons.badge,
                        color: Colors.orange,
                        size: 18,
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          student.enrollment,
                          style: TextStyle(
                            fontSize: isMobile ? 14 : 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "${student.name} Selected",
                    ),
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

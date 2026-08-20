import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  final String studentName;
  final String course;
  final IconData icon;

  const StudentCard({
    super.key,
    required this.studentName,
    required this.course,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: screenWidth < 600 ? 30 : 40,
              backgroundColor: Colors.blue.shade100,
              child: Icon(
                icon,
                size: screenWidth < 600 ? 35 : 45,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              studentName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth < 600 ? 18 : 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              course,
              style: TextStyle(
                fontSize: screenWidth < 600 ? 15 : 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Enrollment : 240120107001",
              style: TextStyle(
                fontSize: screenWidth < 600 ? 13 : 15,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.arrow_forward),
                label: const Text("View Profile"),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "$studentName Profile Clicked",
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

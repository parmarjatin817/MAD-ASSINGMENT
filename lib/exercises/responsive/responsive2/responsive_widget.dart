import 'package:flutter/material.dart';
import 'student_card.dart';

class ResponsiveWidget extends StatelessWidget {
  final int crossAxisCount;
  final String title;

  const ResponsiveWidget({
    super.key,
    required this.crossAxisCount,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: screenWidth < 600 ? 22 : 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.1,
              ),
              itemBuilder: (context, index) {
                return StudentCard(
                  studentName: "Student ${index + 1}",
                  course: "Flutter",
                  icon: Icons.person,
                );
              },
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: screenWidth < 600 ? double.infinity : 250,
            height: 50,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.visibility),
              label: const Text(
                "View Details",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

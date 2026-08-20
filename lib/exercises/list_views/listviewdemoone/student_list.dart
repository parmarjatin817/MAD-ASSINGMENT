import 'package:flutter/material.dart';
import 'student_card.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> students = [
      'Rahul',
      'Amit',
      'Priya',
      'Neha',
      'Karan',
      'Pooja',
      'Hirva',
    ];

    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (context, index) {
        return StudentCard(
          name: students[index],
          number: index + 1,
        );
      },
    );
  }
}

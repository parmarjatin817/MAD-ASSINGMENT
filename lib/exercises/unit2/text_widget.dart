import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Atmiya University",
      style: TextStyle(
        fontSize: 50,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(width: 250, height: 250, color: Colors.blue),
          const Center(
            child: Icon(Icons.person, size: 100, color: Colors.white),
          ),
          const Center(
            child: Text(
              'Student',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(width: 250, height: 200, color: Colors.blue),
          Container(width: 180, height: 140, color: Colors.orange),
          Container(width: 100, height: 80, color: Colors.green),
        ],
      ),
    );
  }
}

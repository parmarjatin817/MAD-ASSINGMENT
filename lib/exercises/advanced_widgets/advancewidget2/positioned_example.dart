import 'package:flutter/material.dart';

class PositionedExample extends StatelessWidget {
  const PositionedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(width: 300, height: 200, color: Colors.blue),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

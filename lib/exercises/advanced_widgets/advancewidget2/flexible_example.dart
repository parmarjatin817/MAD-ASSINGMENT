import 'package:flutter/material.dart';

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            height: 100,
            color: Colors.orange,
            child: const Center(
              child: Text(
                'Flexible Widget',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 100,
          height: 100,
          color: Colors.purple,
          child: const Center(
            child: Text('Normal', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}

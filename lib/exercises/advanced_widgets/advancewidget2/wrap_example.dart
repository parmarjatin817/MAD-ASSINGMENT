import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: const [
          Chip(label: Text('Flutter')),
          Chip(label: Text('Dart')),
          Chip(label: Text('Android')),
          Chip(label: Text('Firebase')),
          Chip(label: Text('UI Design')),
          Chip(label: Text('Animation')),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Container(
            height: 150,
            color: Colors.green,
            child: const Center(
              child: Text(
                'Large Screen',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          );
        }
        return Container(
          height: 150,
          color: Colors.orange,
          child: const Center(
            child: Text(
              'Small Screen',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        );
      },
    );
  }
}

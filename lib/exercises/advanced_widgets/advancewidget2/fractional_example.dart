import 'package:flutter/material.dart';

class FractionalExample extends StatelessWidget {
  const FractionalExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.8,
        heightFactor: 0.3,
        child: Container(
          color: Colors.blue,
          child: const Center(
            child: Text(
              '80% Width',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}

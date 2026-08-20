import 'package:flutter/material.dart';
import 'text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Text Example"),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: MyText(),
      ),
    );
  }
}

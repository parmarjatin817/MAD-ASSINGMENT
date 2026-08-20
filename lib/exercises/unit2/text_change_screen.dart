import 'package:flutter/material.dart';

class TextChangeScreen extends StatefulWidget {
  const TextChangeScreen({super.key});

  @override
  State<TextChangeScreen> createState() => _TextChangeScreenState();
}

class _TextChangeScreenState extends State<TextChangeScreen> {
  String message = "Hello Students";

  void changeText() {
    setState(() {
      message = "Atmiya University";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StatefulWidget Example"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: changeText,
              child: const Text("Change Text"),
            ),
          ],
        ),
      ),
    );
  }
}

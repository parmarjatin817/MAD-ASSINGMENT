import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Easy09());
}

class Easy09 extends StatelessWidget {
  const Easy09({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Stack Widget')),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(width: 300, height: 300, color: Colors.blueAccent),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.black54,
                child: Text(
                  myName,
                  style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

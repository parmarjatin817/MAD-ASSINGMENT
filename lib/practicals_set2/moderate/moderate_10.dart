import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Set2Moderate10(),
    );
  }
}

class Set2Moderate10 extends StatefulWidget {
  const Set2Moderate10({super.key});

  @override
  State<Set2Moderate10> createState() => _Set2Moderate10State();
}

class _Set2Moderate10State extends State<Set2Moderate10> {
  final _controller = TextEditingController();
  int _n = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Star Pattern')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter N for rows'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _n = int.tryParse(_controller.text) ?? 0;
                });
              },
              child: const Text('Display Pattern'),
            ),
            const SizedBox(height: 20),
            Text('Created by: $myName ($myRollNumber)'),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _n,
                itemBuilder: (context, index) {
                  return Text('* ' * (index + 1), style: const TextStyle(fontSize: 18));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

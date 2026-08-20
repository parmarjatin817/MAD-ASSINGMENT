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
      home: const Set2Easy08(),
    );
  }
}

class Set2Easy08 extends StatefulWidget {
  const Set2Easy08({super.key});

  @override
  State<Set2Easy08> createState() => _Set2Easy08State();
}

class _Set2Easy08State extends State<Set2Easy08> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox - $myName'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value ?? false;
                });
              },
            ),
            Text(_isChecked ? 'Checked' : 'Unchecked'),
          ],
        ),
      ),
    );
  }
}

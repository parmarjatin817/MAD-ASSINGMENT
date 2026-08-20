import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Easy03());
}

class Easy03 extends StatelessWidget {
  const Easy03({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: Text('Welcome, $myName')),
        body: Center(
          child: Text('Studying $myCourse at $myCollegeName'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

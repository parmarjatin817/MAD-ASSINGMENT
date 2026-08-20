import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Easy04());
}

class Easy04 extends StatelessWidget {
  const Easy04({super.key});

  final List<String> fruits = const [
    'Apple', 'Banana', 'Cherry', 'Date', 'Elderberry',
    'Fig', 'Grape', 'Honeydew', 'Kiwi', 'Lemon',
    'Mango', 'Orange', 'Papaya'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: Text('$myName\'s Fruit List')),
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(fruits[index]),
              leading: const Icon(Icons.restaurant),
            );
          },
        ),
      ),
    );
  }
}

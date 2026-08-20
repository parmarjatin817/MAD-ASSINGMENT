import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Easy01());
}

class Easy01 extends StatelessWidget {
  const Easy01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Easy 01')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(myName),
              Text(myCollegeName),
              Text(myCourse),
            ],
          ),
        ),
      ),
    );
  }
}

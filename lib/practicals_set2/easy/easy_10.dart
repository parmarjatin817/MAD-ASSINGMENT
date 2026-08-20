import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DataModel(),
      child: const MyApp(),
    ),
  );
}

class DataModel extends ChangeNotifier {
  int _value = myRollNumberInt;
  int get value => _value;

  void updateValue() {
    _value++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Set2Easy10(),
    );
  }
}

class Set2Easy10 extends StatelessWidget {
  const Set2Easy10({super.key});

  @override
  Widget build(BuildContext context) {
    final watchValue = context.watch<DataModel>().value;

    return Scaffold(
      appBar: AppBar(
        title: Text('Read vs Watch - $myName'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Watched Value: $watchValue'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<DataModel>().updateValue();
              },
              child: const Text('Update Value (read)'),
            ),
          ],
        ),
      ),
    );
  }
}

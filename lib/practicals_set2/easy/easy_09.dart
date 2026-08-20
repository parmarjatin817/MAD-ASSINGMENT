import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: const MyApp(),
    ),
  );
}

class CounterModel extends ChangeNotifier {
  int _count = myRollNumberInt;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Set2Easy09(),
    );
  }
}

class Set2Easy09 extends StatelessWidget {
  const Set2Easy09({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider - $myName'),
      ),
      body: Center(
        child: Consumer<CounterModel>(
          builder: (context, counter, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Count: ${counter.count}'),
                ElevatedButton(
                  onPressed: () => counter.increment(),
                  child: const Text('Increment'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

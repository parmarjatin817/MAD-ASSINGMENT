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
      home: const Set2Moderate04(),
    );
  }
}

class Set2Moderate04 extends StatefulWidget {
  const Set2Moderate04({super.key});

  @override
  State<Set2Moderate04> createState() => _Set2Moderate04State();
}

class _Set2Moderate04State extends State<Set2Moderate04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Return Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChildScreen()),
            );

            if (!context.mounted) return;

            if (result != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Received from $myCity: $result')),
              );
            }
          },
          child: const Text('Go to Child Screen'),
        ),
      ),
    );
  }
}

class ChildScreen extends StatelessWidget {
  const ChildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Child Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'Success'),
              child: const Text('Return Success'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'Failure'),
              child: const Text('Return Failure'),
            ),
          ],
        ),
      ),
    );
  }
}

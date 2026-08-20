import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

class Moderate01 extends StatefulWidget {
  const Moderate01({super.key});

  @override
  State<Moderate01> createState() => _Moderate01State();
}

class _Moderate01State extends State<Moderate01> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant Moderate01 oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lifecycle Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, $myName!',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            const Text('Check the console for lifecycle logs.'),
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text('Trigger Rebuild'),
            ),
          ],
        ),
      ),
    );
  }
}

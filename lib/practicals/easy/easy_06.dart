import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Easy06());
}

class Easy06 extends StatelessWidget {
  const Easy06({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Product Card')),
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network('https://picsum.photos/200', height: 200, width: double.infinity, fit: BoxFit.cover),
                ListTile(
                  title: Text(myName),
                  subtitle: Text('Developer from $myCity'),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('This is a simple card description showcasing personal details and an image.'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'expanded_example.dart';
import 'flexible_example.dart';
import 'stack_example.dart';
import 'positioned_example.dart';
import 'wrap_example.dart';
import 'fractional_example.dart';
import 'layout_builder_example.dart';
import 'animated_stack_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Advanced Layout Widgets',
      home: Scaffold(
        appBar: AppBar(title: const Text('Advanced Layout Widgets')),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '1. Expanded',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const ExpandedExample(),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '2. Flexible',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const FlexibleExample(),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '3. Stack',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const StackExample(),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '4. Positioned',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const PositionedExample(),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '5. Wrap',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const WrapExample(),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '6. FractionallySizedBox',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const FractionalExample(),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '7. LayoutBuilder',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const LayoutBuilderExample(),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '8. Animated Stack',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const AnimatedStackExample(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ColorChangeScreen extends StatefulWidget {
  const ColorChangeScreen({super.key});

  @override
  State<ColorChangeScreen> createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget Example"),
        backgroundColor: Colors.pinkAccent,
      ),
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    backgroundColor = Colors.red;
                  });
                },
                child: const Text("Red"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    backgroundColor = Colors.green;
                  });
                },
                child: const Text("Green"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    backgroundColor = Colors.blue;
                  });
                },
                child: const Text("Blue"),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

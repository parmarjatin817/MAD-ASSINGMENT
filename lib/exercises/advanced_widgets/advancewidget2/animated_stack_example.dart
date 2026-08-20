import 'package:flutter/material.dart';

class AnimatedStackExample extends StatefulWidget {
  const AnimatedStackExample({super.key});

  @override
  State<AnimatedStackExample> createState() => _AnimatedStackExampleState();
}

class _AnimatedStackExampleState extends State<AnimatedStackExample> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 250,
        child: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: isOpen ? 300 : 250,
              height: isOpen ? 220 : 180,
              decoration: BoxDecoration(
                color: isOpen ? Colors.green : Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  isOpen ? 'Opened' : 'Click Button',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              right: isOpen ? 20 : 80,
              bottom: 20,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isOpen = !isOpen;
                  });
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    isOpen ? Icons.close : Icons.add,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

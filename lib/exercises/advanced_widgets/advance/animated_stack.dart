import 'package:flutter/material.dart';

class AnimatedStack extends StatefulWidget {
  const AnimatedStack({super.key});

  @override
  State<AnimatedStack> createState() => _AnimatedStackState();
}

class _AnimatedStackState extends State<AnimatedStack> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: isOpen ? 320 : 250,
            height: isOpen ? 350 : 250,
            decoration: BoxDecoration(
              color: isOpen ? Colors.red : Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.person, size: 80, color: Colors.white),
                const SizedBox(height: 15),
                const Text(
                  'ATMIYA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (isOpen) ...[
                  const SizedBox(height: 10),
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isOpen = !isOpen;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: isOpen ? 55 : 50,
                height: isOpen ? 55 : 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isOpen ? Icons.close : Icons.add,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

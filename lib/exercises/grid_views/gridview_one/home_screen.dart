import 'package:flutter/material.dart';
import 'grid_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final List<String> items = const [
    "Mobile",
    "Laptop",
    "Tablet",
    "Watch",
    "Camera",
    "Headphone",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple GridView"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return GridItem(
              title: items[index],
            );
          },
        ),
      ),
    );
  }
}

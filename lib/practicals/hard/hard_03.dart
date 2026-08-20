import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Hard03App());
}

class Hard03App extends StatelessWidget {
  const Hard03App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Hard03(),
    );
  }
}

class Hard03 extends StatelessWidget {
  const Hard03({super.key});

  @override
  Widget build(BuildContext context) {
    final product = myProducts[0];
    return Scaffold(
      appBar: AppBar(title: Text(product['name']!)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  product['image']!,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.red,
                    child: const Text(
                      '20% OFF',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product['name']!,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8.0,
                    children: myHobbies
                        .map((tag) => Chip(label: Text(tag)))
                        .toList(),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Description about the product goes here. It is a high-quality item used by professional developers like Rahul Patel.',
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '₹${product['price']}',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                      Flexible(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Add to Cart'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

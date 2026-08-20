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
      home: const Set2Moderate01(),
    );
  }
}

class Set2Moderate01 extends StatelessWidget {
  const Set2Moderate01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Catalog')),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.7,
        ),
        itemCount: myProducts.length,
        itemBuilder: (context, index) {
          final product = myProducts[index];
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    product['image']!,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    product['name']!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text('₹${product['price']}'),
              ],
            ),
          );
        },
      ),
    );
  }
}

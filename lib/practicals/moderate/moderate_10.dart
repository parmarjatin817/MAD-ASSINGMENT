import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

class Moderate10 extends StatelessWidget {
  const Moderate10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Cards'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: myProducts.length,
        itemBuilder: (context, index) {
          final product = myProducts[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    product['image']!,
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  title: Text(product['name']!),
                  subtitle: Text('Showcased by $myName'),
                  trailing: Text('₹${product['price']}'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

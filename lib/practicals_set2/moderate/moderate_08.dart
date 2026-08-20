import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../assignments/my_details.dart';

class CartProvider with ChangeNotifier {
  final List<Map<String, String>> _items = [];

  List<Map<String, String>> get items => _items;

  double get totalPrice {
    return _items.fold(0, (sum, item) => sum + double.parse(item['price']!));
  }

  void addItem(Map<String, String> item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Set2Moderate08(),
    );
  }
}

class Set2Moderate08 extends StatelessWidget {
  const Set2Moderate08({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Shopping Cart')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: myProducts.length,
              itemBuilder: (context, index) {
                final product = myProducts[index];
                return ListTile(
                  title: Text(product['name']!),
                  subtitle: Text('₹${product['price']}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.add_shopping_cart),
                    onPressed: () => cart.addItem(product),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total: ₹${cart.totalPrice}',
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Items: ${cart.items.length}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

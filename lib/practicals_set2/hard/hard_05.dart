import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Set2Hard05(),
  ));
}

class Set2Hard05 extends StatefulWidget {
  const Set2Hard05({super.key});

  @override
  State<Set2Hard05> createState() => _Set2Hard05State();
}

class _Set2Hard05State extends State<Set2Hard05> {
  bool _isGridView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List vs Grid Toggle'),
        actions: [
          IconButton(
            icon: Icon(_isGridView ? Icons.list : Icons.grid_view),
            onPressed: () => setState(() => _isGridView = !_isGridView),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Owner: $myName ($myRollNumber)',
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: _isGridView
                ? GridView.builder(
                    padding: const EdgeInsets.all(10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: myProducts.length,
                    itemBuilder: (context, index) => _buildItem(index, true),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: myProducts.length,
                    itemBuilder: (context, index) => _buildItem(index, false),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(int index, bool isGrid) {
    final product = myProducts[index];
    if (isGrid) {
      return Card(
        child: Column(
          children: [
            Expanded(child: Image.network(product['image']!, fit: BoxFit.cover)),
            Text(product['name']!),
            Text('Price: ${product['price']}'),
          ],
        ),
      );
    }
    return Card(
      child: ListTile(
        leading: Image.network(product['image']!),
        title: Text(product['name']!),
        subtitle: Text('Price: ${product['price']}'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Set2Hard08(),
  ));
}

class Set2Hard08 extends StatefulWidget {
  const Set2Hard08({super.key});

  @override
  State<Set2Hard08> createState() => _Set2Hard08State();
}

class _Set2Hard08State extends State<Set2Hard08> {
  final TextEditingController _controller = TextEditingController();
  int _n = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pattern Printing')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Student: $myName', style: const TextStyle(fontSize: 16)),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter number of rows (N)'),
              onChanged: (value) {
                setState(() {
                  _n = int.tryParse(value) ?? 0;
                });
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(_n, (i) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(i + 1, (j) {
                        return Container(
                          margin: const EdgeInsets.all(4),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text('${j + 1}'),
                        );
                      }),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

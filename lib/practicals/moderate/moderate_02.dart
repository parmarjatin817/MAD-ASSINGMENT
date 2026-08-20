import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

class Moderate02 extends StatelessWidget {
  const Moderate02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layout'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              children: _buildItems(context),
            );
          } else {
            return Column(
              children: _buildItems(context),
            );
          }
        },
      ),
    );
  }

  List<Widget> _buildItems(BuildContext context) {
    return [
      Expanded(
        child: Container(
          color: Colors.blue.shade100,
          child: Center(
            child: Text(
              'Name: $myName',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.green.shade100,
          child: Center(
            child: Text(
              'College: $myCollegeName',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
      ),
    ];
  }
}

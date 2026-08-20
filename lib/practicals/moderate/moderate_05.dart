import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

class Moderate05 extends StatefulWidget {
  const Moderate05({super.key});

  @override
  State<Moderate05> createState() => _Moderate05State();
}

class _Moderate05State extends State<Moderate05> {
  final List<String> _selectedHobbies = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skill Selector'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Hobbies for $myName:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: myHobbies.map((hobby) {
                final isSelected = _selectedHobbies.contains(hobby);
                return FilterChip(
                  label: Text(hobby),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        _selectedHobbies.add(hobby);
                      } else {
                        _selectedHobbies.remove(hobby);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 24),
            Text(
              'Selected: ${_selectedHobbies.join(', ')}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

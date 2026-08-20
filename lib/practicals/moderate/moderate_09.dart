import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

class Moderate09 extends StatelessWidget {
  const Moderate09({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWide = screenWidth > 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive Form'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('User Profile: $myName', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 20),
              if (isWide)
                Row(
                  children: [
                    Expanded(child: _buildTextField('First Name', myName.split(' ')[0])),
                    const SizedBox(width: 16),
                    Expanded(child: _buildTextField('Last Name', myName.split(' ').length > 1 ? myName.split(' ')[1] : '')),
                  ],
                )
              else
                Column(
                  children: [
                    _buildTextField('First Name', myName.split(' ')[0]),
                    const SizedBox(height: 16),
                    _buildTextField('Last Name', myName.split(' ').length > 1 ? myName.split(' ')[1] : ''),
                  ],
                ),
              const SizedBox(height: 16),
              _buildTextField('College', myCollegeName),
              const SizedBox(height: 16),
              _buildTextField('City', myCity),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String initialValue) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      controller: TextEditingController(text: initialValue),
    );
  }
}

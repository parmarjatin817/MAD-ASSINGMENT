import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Set2Hard06(),
  ));
}

class Set2Hard06 extends StatefulWidget {
  const Set2Hard06({super.key});

  @override
  State<Set2Hard06> createState() => _Set2Hard06State();
}

class _Set2Hard06State extends State<Set2Hard06> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedSubject;
  bool _isAgreed = false;
  String? _username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Complex Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text('Developer: $myName', style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              TextFormField(
                initialValue: myName,
                decoration: const InputDecoration(labelText: 'Username'),
                validator: (value) =>
                    value!.isEmpty ? 'Username is required' : null,
                onSaved: (value) => _username = value,
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Favorite Subject'),
                items: mySubjectMarks.keys.map((subject) {
                  return DropdownMenuItem(value: subject, child: Text(subject));
                }).toList(),
                onChanged: (value) => setState(() => _selectedSubject = value),
                validator: (value) =>
                    value == null ? 'Please select a subject' : null,
                onSaved: (value) => _selectedSubject = value,
              ),
              const SizedBox(height: 20),
              CheckboxListTile(
                title: const Text('I agree to the terms and conditions'),
                value: _isAgreed,
                onChanged: (value) => setState(() => _isAgreed = value!),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() && _isAgreed) {
                    _formKey.currentState!.save();
                    _showSummary();
                  } else if (!_isAgreed) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please agree to terms')),
                    );
                  }
                },
                child: const Text('Save and Show Summary'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSummary() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Form Summary'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $_username'),
            Text('Selected Subject: $_selectedSubject'),
            Text('Agreed: $_isAgreed'),
            const SizedBox(height: 10),
            Text('Roll: $myRollNumber'),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context), child: const Text('OK'))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Set2Hard01(),
  ));
}

class Set2Hard01 extends StatefulWidget {
  const Set2Hard01({super.key});

  @override
  State<Set2Hard01> createState() => _Set2Hard01State();
}

class _Set2Hard01State extends State<Set2Hard01> {
  int _currentStep = 0;
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();

  final _nameController = TextEditingController(text: myName);
  final _emailController = TextEditingController();
  final _addressController = TextEditingController(text: myCity);
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi-step Form Wizard'),
        centerTitle: true,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        child: Stepper(
          type: StepperType.vertical,
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep == 0) {
              if (_formKey1.currentState!.validate()) {
                setState(() => _currentStep += 1);
              }
            } else if (_currentStep == 1) {
              if (_formKey2.currentState!.validate()) {
                setState(() => _currentStep += 1);
              }
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Form Submitted for $myName')),
              );
            }
          },
          onStepCancel: () {
            if (_currentStep > 0) {
              setState(() => _currentStep -= 1);
            }
          },
          steps: [
            Step(
              title: const Text('Personal Details'),
              isActive: _currentStep >= 0,
              content: Form(
                key: _formKey1,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(labelText: 'Name'),
                      validator: (value) =>
                          value!.isEmpty ? 'Enter your name' : null,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(labelText: 'Email'),
                      validator: (value) =>
                          value!.isEmpty ? 'Enter your email' : null,
                    ),
                  ],
                ),
              ),
            ),
            Step(
              title: const Text('Address Details'),
              isActive: _currentStep >= 1,
              content: Form(
                key: _formKey2,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _addressController,
                      decoration: const InputDecoration(labelText: 'City'),
                      validator: (value) =>
                          value!.isEmpty ? 'Enter your city' : null,
                    ),
                    TextFormField(
                      controller: _phoneController,
                      decoration: const InputDecoration(labelText: 'Phone'),
                      keyboardType: TextInputType.phone,
                      validator: (value) =>
                          value!.isEmpty ? 'Enter your phone' : null,
                    ),
                  ],
                ),
              ),
            ),
            Step(
              title: const Text('Review'),
              isActive: _currentStep >= 2,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${_nameController.text}'),
                  Text('Email: ${_emailController.text}'),
                  Text('City: ${_addressController.text}'),
                  Text('Phone: ${_phoneController.text}'),
                  const SizedBox(height: 10),
                  Text('Roll Number: $myRollNumber'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

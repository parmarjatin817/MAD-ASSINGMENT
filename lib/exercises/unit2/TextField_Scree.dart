import 'package:flutter/material.dart';
import '../text_fields/CustomTextField.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Examples"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const CustomTextField(
              label: "Student Name",
              hint: "Enter Name",
            ),
            SizedBox(height: 20),
            CustomTextField(
              label: "Email",
              hint: "Enter Email Address",
              prefixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            CustomTextField(
              label: "Password",
              hint: "Enter Password",
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
            SizedBox(height: 20),
            CustomTextField(
              label: "Mobile Number",
              hint: "Enter Mobile Number",
              prefixIcon: Icons.phone,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            CustomTextField(
              label: "Address",
              hint: "Enter Your Address",
              maxLines: 4,
            ),
            SizedBox(height: 20),
            CustomTextField(
              label: "City",
              hint: "Enter City",
              prefixIcon: Icons.location_city,
              filled: true,
            ),
            SizedBox(height: 20),
            CustomTextField(
              label: "Search",
              hint: "Search Here",
              prefixIcon: Icons.search,
            ),
          ],
        ),
      ),
    );
  }
}

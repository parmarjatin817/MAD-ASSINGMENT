import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'student_card.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController nameController =
  TextEditingController();
  File? selectedImage;
  List<Map<String, dynamic>> students = [];
  final ImagePicker picker = ImagePicker();

  Future<void> selectImage() async {
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
    );
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }
  void addStudent() {
    if (nameController.text.isEmpty ||
        selectedImage == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Please enter name and select image",
          ),
        ),
      );
      return;
    }
    setState(() {
      students.add({
        "name": nameController.text,
        "image": selectedImage!,
      });
      nameController.clear();
      selectedImage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Student Gallery",
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Enter Student Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: selectImage,
            icon: const Icon(Icons.image),
            label: const Text(
              "Select Image",
            ),
          ),
          if (selectedImage != null)
            Padding(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: FileImage(
                  selectedImage!,
                ),
              ),
            ),
          ElevatedButton(
            onPressed: addStudent,
            child: const Text(
              "Add Student",
            ),
          ),
          const Divider(),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: students.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return StudentCard(
                  name: students[index]["name"],
                  image: students[index]["image"],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'Dynamic_Text_Widget.dart';

class DesignScreen extends StatefulWidget {
  const DesignScreen({super.key});

  @override
  State<DesignScreen> createState() => _DesignScreenState();
}

class _DesignScreenState extends State<DesignScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController backgroundController = TextEditingController();
  final TextEditingController fontController = TextEditingController();
  final TextEditingController fontSizeController = TextEditingController();

  String studentName = "Welcome Students";
  Color screenBackgroundColor = Colors.white;
  Color fontColor = Colors.black;
  double fontSize = 30;

  Color getColor(String colorName) {
    switch (colorName.toLowerCase()) {
      case "red":
        return Colors.red;
      case "green":
        return Colors.green;
      case "blue":
        return Colors.blue;
      case "yellow":
        return Colors.yellow;
      case "orange":
        return Colors.orange;
      case "purple":
        return Colors.purple;
      case "pink":
        return Colors.pink;
      case "brown":
        return Colors.brown;
      case "black":
        return Colors.black;
      case "white":
        return Colors.white;
      case "grey":
        return Colors.grey;
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenBackgroundColor,
      appBar: AppBar(
        title: const Text("Dynamic Text Example"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            DynamicTextWidget(
              text: studentName,
              textColor: fontColor,
              fontSize: fontSize,
            ),
            const SizedBox(height: 30),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Student Name",
                hintText: "Enter Student Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: backgroundController,
              decoration: const InputDecoration(
                labelText: "Screen Background Color",
                hintText: "Example : blue",
                prefixIcon: Icon(Icons.palette),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: fontController,
              decoration: const InputDecoration(
                labelText: "Font Color",
                hintText: "Example : white",
                prefixIcon: Icon(Icons.color_lens),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: fontSizeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Font Size",
                hintText: "Example : 40",
                prefixIcon: Icon(Icons.text_fields),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    studentName = nameController.text;
                    screenBackgroundColor = getColor(backgroundController.text);
                    fontColor = getColor(fontController.text);
                    fontSize = double.tryParse(fontSizeController.text) ?? 30;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text(
                  "Apply Changes",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    backgroundController.dispose();
    fontController.dispose();
    fontSizeController.dispose();
    super.dispose();
  }
}

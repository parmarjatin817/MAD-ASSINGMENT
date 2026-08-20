import 'package:flutter/material.dart';
class ImageDetail extends StatelessWidget {
  final String imageUrl;
  const ImageDetail({
    super.key,
    required this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selected Image"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: InteractiveViewer(
          child: Image.network(
            imageUrl,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

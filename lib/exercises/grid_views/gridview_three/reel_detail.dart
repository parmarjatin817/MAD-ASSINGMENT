import 'package:flutter/material.dart';

class ReelDetail extends StatelessWidget {
  final String imageUrl;
  final int reelNumber;

  const ReelDetail({
    super.key,
    required this.imageUrl,
    required this.reelNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Reel $reelNumber"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
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

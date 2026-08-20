import 'package:flutter/material.dart';
import 'responsive_widgets.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive UI Example"),
        backgroundColor: Colors.blue,
      ),
      body: screenWidth < 600 ? const MobileLayout() : const TabletLayout(),
    );
  }
}

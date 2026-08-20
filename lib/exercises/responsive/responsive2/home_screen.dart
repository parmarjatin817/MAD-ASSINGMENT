import 'package:flutter/material.dart';
import 'responsive_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Responsive UI Example",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (screenWidth < 600) {
            return const ResponsiveWidget(
              crossAxisCount: 1,
              title: "Mobile View",
            );
          } else if (screenWidth < 900) {
            return const ResponsiveWidget(
              crossAxisCount: 2,
              title: "Tablet View",
            );
          } else {
            return const ResponsiveWidget(
              crossAxisCount: 3,
              title: "Desktop View",
            );
          }
        },
      ),
    );
  }
}

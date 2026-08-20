import 'package:flutter/material.dart';
import 'image_detail.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final List<String> natureImages = const [
    'https://images.unsplash.com/photo-1500534623283-312aade485b7',
    'https://images.unsplash.com/photo-1441974231531-c6227db76b6e',
    'https://images.unsplash.com/photo-1470770841072-f978cf4d019e',
    'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
    'https://images.unsplash.com/photo-1469474968028-56623f02e42e',
    'https://images.unsplash.com/photo-1501854140801-50d01698950b',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nature Gallery"),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: natureImages.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImageDetail(
                    imageUrl: natureImages[index],
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                natureImages[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

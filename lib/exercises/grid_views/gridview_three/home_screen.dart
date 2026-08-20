import 'package:flutter/material.dart';
import 'video_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<String> videos = const [
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Video Gallery",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(3),
        itemCount: videos.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoScreen(
                    videoUrl: videos[index],
                    videoNumber: index + 1,
                  ),
                ),
              );
            },
            child: Container(
              color: Colors.black,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    "https://images.unsplash.com/photo-1500534623283-312aade485b7",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black26,
                  ),
                  const Center(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white70,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    bottom: 5,
                    child: Text(
                      "Video ${index + 1}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

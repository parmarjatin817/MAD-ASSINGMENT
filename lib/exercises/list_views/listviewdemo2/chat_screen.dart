import 'package:flutter/material.dart';
import 'chat_tile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> chats = [
      {'name': 'Rahul', 'message': 'Hello, how are you?', 'time': '10:30 AM'},
      {'name': 'Priya', 'message': 'See you tomorrow', 'time': '10:15 AM'},
      {'name': 'Amit', 'message': 'Flutter class today', 'time': '09:45 AM'},
      {'name': 'Neha', 'message': 'Thank you!', 'time': '09:20 AM'},
      {'name': 'Karan', 'message': 'Can you send the notes?', 'time': '08:50 AM'},
      {'name': 'Pooja', 'message': 'Good morning', 'time': '08:30 AM'},
      {'name': 'Ravi', 'message': 'Okay, see you soon', 'time': 'Yesterday'},
      {'name': 'Sneha', 'message': 'Assignment completed', 'time': 'Yesterday'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ChatTile(
            name: chat['name']!,
            message: chat['message']!,
            time: chat['time']!,
            index: index,
          );
        },
      ),
    );
  }
}

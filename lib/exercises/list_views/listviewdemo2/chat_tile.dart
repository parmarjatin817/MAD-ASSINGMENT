import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final int index;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      leading: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.primaries[index % Colors.primaries.length],
        child: Text(
          name[0],
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
      subtitle: Row(
        children: [
          const Icon(
            Icons.done_all,
            color: Colors.blue,
            size: 18,
          ),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              message,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      trailing: Text(
        time,
        style: const TextStyle(
          color: Colors.green,
          fontSize: 12,
        ),
      ),
      onTap: () {
        debugPrint('Chat opened: $name');
      },
    );
  }
}

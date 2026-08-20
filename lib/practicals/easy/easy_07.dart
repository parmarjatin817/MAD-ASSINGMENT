import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Easy07());
}

class Easy07 extends StatelessWidget {
  const Easy07({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Navigation Drawer')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blue),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(myName, style: const TextStyle(color: Colors.white, fontSize: 20)),
                    Text(myCourse, style: const TextStyle(color: Colors.white70)),
                  ],
                ),
              ),
              ListTile(leading: const Icon(Icons.home), title: const Text('Home'), onTap: () {}),
              ListTile(leading: const Icon(Icons.person), title: const Text('Profile'), onTap: () {}),
              ListTile(leading: const Icon(Icons.settings), title: const Text('Settings'), onTap: () {}),
              ListTile(leading: const Icon(Icons.logout), title: const Text('Logout'), onTap: () {}),
            ],
          ),
        ),
        body: const Center(child: Text('Open drawer for options')),
      ),
    );
  }
}

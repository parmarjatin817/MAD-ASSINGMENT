import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

class Moderate07 extends StatelessWidget {
  const Moderate07({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar Demo'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.photo), text: 'Photos'),
              Tab(icon: Icon(Icons.videocam), text: 'Videos'),
              Tab(icon: Icon(Icons.file_copy), text: 'Files'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildTabContent('Photos for $myName'),
            _buildTabContent('Videos for $myCollegeName'),
            _buildTabContent('Files for $myCourse'),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(String text) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.folder_open, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          Text(text),
        ],
      ),
    );
  }
}

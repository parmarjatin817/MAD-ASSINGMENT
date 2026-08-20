import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Hard06App());
}

class Hard06App extends StatelessWidget {
  const Hard06App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Hard06(),
    );
  }
}

class Hard06 extends StatelessWidget {
  const Hard06({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.grid_on), text: 'Photos'),
              Tab(icon: Icon(Icons.list), text: 'Activity'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: 20,
              itemBuilder: (context, index) => Container(
                color: Colors.grey[300],
                child: Image.network(
                  'https://picsum.photos/200?random=$index',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) => ListTile(
                leading: const CircleAvatar(child: Icon(Icons.person)),
                title: Text('$myName did action $index'),
                subtitle: Text('2 hours ago - $myActualCareerGoal'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Set2Hard09(),
  ));
}

class Set2Hard09 extends StatefulWidget {
  const Set2Hard09({super.key});

  @override
  State<Set2Hard09> createState() => _Set2Hard09State();
}

class _Set2Hard09State extends State<Set2Hard09> {
  int _currentIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          _buildNavigator(0, 'Home'),
          _buildNavigator(1, 'Profile'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (_currentIndex == index) {
            _navigatorKeys[index].currentState!.popUntil((route) => route.isFirst);
          } else {
            setState(() => _currentIndex = index);
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildNavigator(int index, String name) {
    return Navigator(
      key: _navigatorKeys[index],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => index == 0
              ? HomeScreen(tabName: name)
              : ProfileScreen(tabName: name),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String tabName;
  const HomeScreen({super.key, required this.tabName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tabName)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to $tabName Tab'),
            Text('Developer: $myName'),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen(title: '$tabName Details')),
              ),
              child: const Text('Go to Details'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final String tabName;
  const ProfileScreen({super.key, required this.tabName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tabName)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 50, backgroundImage: NetworkImage(myProfileImageUrl)),
            const SizedBox(height: 10),
            Text(myName, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(myRollNumber),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen(title: '$tabName Settings')),
              ),
              child: const Text('Go to Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final String title;
  const DetailsScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the nested $title screen'),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

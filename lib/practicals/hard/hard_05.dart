import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Hard05App());
}

class Hard05App extends StatelessWidget {
  const Hard05App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Hard05(),
    );
  }
}

class Hard05 extends StatefulWidget {
  const Hard05({super.key});

  @override
  State<Hard05> createState() => _Hard05State();
}

class _Hard05State extends State<Hard05> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text('Home Screen - $myName')),
    Center(child: Text('Search Screen - $myCourse')),
    const Center(child: Text('Settings Screen')),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;

        return Scaffold(
          appBar: isMobile ? AppBar(title: const Text('Responsive Nav')) : null,
          drawer: isMobile
              ? Drawer(
                  child: ListView(
                    children: [
                      DrawerHeader(
                        child: Text(myName),
                      ),
                      ListTile(
                        title: const Text('Home'),
                        onTap: () {
                          setState(() => _selectedIndex = 0);
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Text('Search'),
                        onTap: () {
                          setState(() => _selectedIndex = 1);
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                )
              : null,
          body: Row(
            children: [
              if (!isMobile)
                NavigationRail(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  labelType: NavigationRailLabelType.all,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.search),
                      label: Text('Search'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.settings),
                      label: Text('Settings'),
                    ),
                  ],
                ),
              Expanded(
                child: _screens[_selectedIndex],
              ),
            ],
          ),
        );
      },
    );
  }
}

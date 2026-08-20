import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Hard01App());
}

class Hard01App extends StatelessWidget {
  const Hard01App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Hard01(),
    );
  }
}

class Hard01 extends StatelessWidget {
  const Hard01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Dashboard'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const MobileLayout();
          } else if (constraints.maxWidth < 1200) {
            return const TabletLayout();
          } else {
            return const DesktopLayout();
          }
        },
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Card(
        margin: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text('Item $index - $myName'),
          subtitle: Text(myCourse),
        ),
      ),
    );
  }
}

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10,
      itemBuilder: (context, index) => Card(
        margin: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Grid Item $index'),
              Text(myName),
              Text(myRollNumber),
            ],
          ),
        ),
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 250,
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text(myName),
                accountEmail: Text(myRollNumber),
              ),
              ListTile(
                title: const Text('Dashboard'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {},
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => ListTile(
              title: Text('Main Content Item $index'),
            ),
          ),
        ),
        Container(
          width: 300,
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          child: Center(
            child: Text('Details Panel\n$myCourse'),
          ),
        ),
      ],
    );
  }
}

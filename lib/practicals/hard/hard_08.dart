import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Hard08App());
}

class Hard08App extends StatelessWidget {
  const Hard08App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Hard08(),
    );
  }
}

class Hard08 extends StatelessWidget {
  const Hard08({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/800/200'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: -50,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: NetworkImage(myProfileImageUrl),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Text(
            myName,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            myActualCareerGoal,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Follow')),
              const SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: const Text('Message')),
            ],
          ),
        ],
      ),
    );
  }
}

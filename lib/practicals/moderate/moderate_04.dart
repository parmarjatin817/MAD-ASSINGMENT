import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String role;
  final String imageUrl;
  final VoidCallback onTap;

  const ProfileCard({
    super.key,
    required this.name,
    required this.role,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(name),
        subtitle: Text(role),
        onTap: onTap,
      ),
    );
  }
}

class Moderate04 extends StatelessWidget {
  const Moderate04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widgets'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: [
          ProfileCard(
            name: myName,
            role: myActualCareerGoal,
            imageUrl: myProfileImageUrl,
            onTap: () {},
          ),
          ProfileCard(
            name: 'Friend 1',
            role: 'Software Engineer',
            imageUrl: 'https://picsum.photos/id/10/200',
            onTap: () {},
          ),
          ProfileCard(
            name: 'Friend 2',
            role: 'Product Manager',
            imageUrl: 'https://picsum.photos/id/20/200',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

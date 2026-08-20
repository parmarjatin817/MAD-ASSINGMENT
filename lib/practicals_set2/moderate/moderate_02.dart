import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Set2Moderate02(),
    );
  }
}

class Set2Moderate02 extends StatefulWidget {
  const Set2Moderate02({super.key});

  @override
  State<Set2Moderate02> createState() => _Set2Moderate02State();
}

class _Set2Moderate02State extends State<Set2Moderate02> {
  List<String> filteredMovies = List.from(myFavoriteMovies);

  void _filterMovies(String query) {
    setState(() {
      filteredMovies = myFavoriteMovies
          .where((movie) => movie.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search Movies')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filterMovies,
              decoration: const InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredMovies.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredMovies[index]),
                  subtitle: Text(myCollegeName),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

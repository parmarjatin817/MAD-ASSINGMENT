import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Set2Hard10(),
      ),
    ),
  );
}

class User {
  final String username;
  final String password;

  User({required this.username, required this.password});
}

class AuthProvider with ChangeNotifier {
  final List<User> _users = [
    User(username: 'admin', password: '123'),
    User(username: myName.split(' ')[0].toLowerCase(), password: myRollNumber),
  ];

  User? _currentUser;
  User? get currentUser => _currentUser;

  bool login(String username, String password) {
    try {
      final user = _users.firstWhere(
          (u) => u.username == username && u.password == password);
      _currentUser = user;
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }

  void logout() {
    _currentUser = null;
    notifyListeners();
  }
}

class Set2Hard10 extends StatefulWidget {
  const Set2Hard10({super.key});

  @override
  State<Set2Hard10> createState() => _Set2Hard10State();
}

class _Set2Hard10State extends State<Set2Hard10> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Multi-user Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text('Developer: $myName ($myRollNumber)'),
              const SizedBox(height: 20),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
                validator: (value) =>
                    value!.isEmpty ? 'Enter username' : null,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) =>
                    value!.isEmpty ? 'Enter password' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final success = Provider.of<AuthProvider>(context, listen: false)
                        .login(_usernameController.text, _passwordController.text);
                    if (success) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DashboardScreen()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Invalid Credentials')),
                      );
                    }
                  }
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 20),
              const Text('Hint: User is first name in lowercase, Pwd is roll number'),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              auth.logout();
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, ${auth.currentUser?.username}!',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            Text('City: $myCity'),
            Text('College: $myCollegeName'),
          ],
        ),
      ),
    );
  }
}

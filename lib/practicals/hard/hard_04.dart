import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Hard04App());
}

class Hard04App extends StatelessWidget {
  const Hard04App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Hard04(),
    );
  }
}

class Hard04 extends StatefulWidget {
  const Hard04({super.key});

  @override
  State<Hard04> createState() => _Hard04State();
}

class _Hard04State extends State<Hard04> {
  final List<String> _todos = List.from(myHobbies);

  void _addTodo(String todo) {
    setState(() {
      _todos.add(todo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TodoApp(
      initialTodos: _todos,
      onAdd: _addTodo,
    );
  }
}

class TodoApp extends StatefulWidget {
  final List<String> initialTodos;
  final Function(String) onAdd;

  const TodoApp({
    super.key,
    required this.initialTodos,
    required this.onAdd,
  });

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  late List<Map<String, dynamic>> _todoItems;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _todoItems = widget.initialTodos
        .map((todo) => {'title': todo, 'completed': false})
        .toList();
  }

  @override
  void didUpdateWidget(TodoApp oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialTodos.length != oldWidget.initialTodos.length) {
      final newItems = widget.initialTodos
          .where((t) => !_todoItems.any((item) => item['title'] == t))
          .map((t) => {'title': t, 'completed': false});
      setState(() {
        _todoItems.addAll(newItems);
      });
    }
  }

  void _toggleComplete(int index) {
    setState(() {
      _todoItems[index]['completed'] = !_todoItems[index]['completed'];
    });
  }

  void _removeTodo(int index) {
    setState(() {
      _todoItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To-Do List')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(hintText: 'Enter task'),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      widget.onAdd(_controller.text);
                      _controller.clear();
                    }
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _todoItems.length,
              itemBuilder: (context, index) {
                final item = _todoItems[index];
                return ListTile(
                  leading: Checkbox(
                    value: item['completed'],
                    onChanged: (_) => _toggleComplete(index),
                  ),
                  title: Text(
                    item['title'],
                    style: TextStyle(
                      decoration: item['completed']
                          ? TextDecoration.lineThrough
                          : null,
                    ),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _removeTodo(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

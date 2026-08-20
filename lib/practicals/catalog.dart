import 'package:flutter/material.dart';
import 'package:provider/provider.dart' as p;
import 'package:flutter_riverpod/flutter_riverpod.dart' as r;
import 'package:flutter_bloc/flutter_bloc.dart';
import '../assignments/my_details.dart';

import 'easy/easy_01.dart';
import 'easy/easy_02.dart';
import 'easy/easy_03.dart';
import 'easy/easy_04.dart';
import 'easy/easy_05.dart';
import 'easy/easy_06.dart';
import 'easy/easy_07.dart';
import 'easy/easy_08.dart';
import 'easy/easy_09.dart';
import 'easy/easy_10.dart';

import 'moderate/moderate_01.dart';
import 'moderate/moderate_02.dart';
import 'moderate/moderate_03.dart';
import 'moderate/moderate_04.dart';
import 'moderate/moderate_05.dart';
import 'moderate/moderate_06.dart';
import 'moderate/moderate_07.dart';
import 'moderate/moderate_08.dart';
import 'moderate/moderate_09.dart';
import 'moderate/moderate_10.dart';

import 'hard/hard_01.dart';
import 'hard/hard_02.dart';
import 'hard/hard_03.dart';
import 'hard/hard_04.dart';
import 'hard/hard_05.dart';
import 'hard/hard_06.dart';
import 'hard/hard_07.dart';
import 'hard/hard_08.dart';
import 'hard/hard_09.dart';
import 'hard/hard_10.dart';

import '../practicals_set2/easy/easy_01.dart';
import '../practicals_set2/easy/easy_02.dart';
import '../practicals_set2/easy/easy_03.dart';
import '../practicals_set2/easy/easy_04.dart';
import '../practicals_set2/easy/easy_05.dart';
import '../practicals_set2/easy/easy_06.dart';
import '../practicals_set2/easy/easy_07.dart';
import '../practicals_set2/easy/easy_08.dart';
import '../practicals_set2/easy/easy_09.dart';
import '../practicals_set2/easy/easy_10.dart';

import '../practicals_set2/moderate/moderate_01.dart';
import '../practicals_set2/moderate/moderate_02.dart';
import '../practicals_set2/moderate/moderate_03.dart';
import '../practicals_set2/moderate/moderate_04.dart';
import '../practicals_set2/moderate/moderate_05.dart';
import '../practicals_set2/moderate/moderate_06.dart';
import '../practicals_set2/moderate/moderate_07.dart';
import '../practicals_set2/moderate/moderate_08.dart';
import '../practicals_set2/moderate/moderate_09.dart';
import '../practicals_set2/moderate/moderate_10.dart';

import '../practicals_set2/hard/hard_01.dart';
import '../practicals_set2/hard/hard_02.dart';
import '../practicals_set2/hard/hard_03.dart';
import '../practicals_set2/hard/hard_04.dart';
import '../practicals_set2/hard/hard_05.dart';
import '../practicals_set2/hard/hard_06.dart';
import '../practicals_set2/hard/hard_07.dart';
import '../practicals_set2/hard/hard_08.dart';
import '../practicals_set2/hard/hard_09.dart';
import '../practicals_set2/hard/hard_10.dart';

class PracticalCatalog extends StatefulWidget {
  const PracticalCatalog({super.key});

  @override
  State<PracticalCatalog> createState() => _PracticalCatalogState();
}

class _PracticalCatalogState extends State<PracticalCatalog> {
  int _selectedModule = 0;

  final List<TaskItem> _module1Easy = const [
    TaskItem('Task 01', Easy01()),
    TaskItem('Task 02', Easy02()),
    TaskItem('Task 03', Easy03()),
    TaskItem('Task 04', Easy04()),
    TaskItem('Task 05', Easy05()),
    TaskItem('Task 06', Easy06()),
    TaskItem('Task 07', Easy07()),
    TaskItem('Task 08', Easy08()),
    TaskItem('Task 09', Easy09()),
    TaskItem('Task 10', Easy10()),
  ];

  final List<TaskItem> _module1Moderate = const [
    TaskItem('Task 01', Moderate01()),
    TaskItem('Task 02', Moderate02()),
    TaskItem('Task 03', Moderate03()),
    TaskItem('Task 04', Moderate04()),
    TaskItem('Task 05', Moderate05()),
    TaskItem('Task 06', Moderate06()),
    TaskItem('Task 07', Moderate07()),
    TaskItem('Task 08', Moderate08()),
    TaskItem('Task 09', Moderate09()),
    TaskItem('Task 10', Moderate10()),
  ];

  final List<TaskItem> _module1Hard = const [
    TaskItem('Task 01', Hard01()),
    TaskItem('Task 02', Hard02()),
    TaskItem('Task 03', Hard03()),
    TaskItem('Task 04', Hard04()),
    TaskItem('Task 05', Hard05()),
    TaskItem('Task 06', Hard06()),
    TaskItem('Task 07', Hard07()),
    TaskItem('Task 08', Hard08()),
    TaskItem('Task 09', Hard09()),
    TaskItem('Task 10', Hard10()),
  ];

  late final List<TaskItem> _module2Easy = [
    const TaskItem('Task 01', Set2Easy01()),
    const TaskItem('Task 02', Set2Easy02()),
    const TaskItem('Task 03', Set2Easy03()),
    const TaskItem('Task 04', Set2Easy04()),
    const TaskItem('Task 05', Set2Easy05()),
    const TaskItem('Task 06', Set2Easy06()),
    const TaskItem('Task 07', Set2Easy07()),
    const TaskItem('Task 08', Set2Easy08()),
    TaskItem('Task 09', p.ChangeNotifierProvider(create: (_) => CounterModel(), child: const Set2Easy09())),
    TaskItem('Task 10', p.ChangeNotifierProvider(create: (_) => DataModel(), child: const Set2Easy10())),
  ];

  final List<TaskItem> _module2Moderate = const [
    TaskItem('Task 01', Set2Moderate01()),
    TaskItem('Task 02', Set2Moderate02()),
    TaskItem('Task 03', Set2Moderate03()),
    TaskItem('Task 04', Set2Moderate04()),
    TaskItem('Task 05', Set2Moderate05()),
    TaskItem('Task 06', Set2Moderate06()),
    TaskItem('Task 07', Set2Moderate07()),
    TaskItem('Task 08', Set2Moderate08()),
    TaskItem('Task 09', Set2Moderate09()),
    TaskItem('Task 10', Set2Moderate10()),
  ];

  late final List<TaskItem> _module2Hard = [
    const TaskItem('Task 01', Set2Hard01()),
    const TaskItem('Task 02', Set2Hard02()),
    const TaskItem('Task 03', r.ProviderScope(child: Set2Hard03())),
    TaskItem('Task 04', BlocProvider(create: (_) => CounterBloc(), child: const Set2Hard04())),
    const TaskItem('Task 05', Set2Hard05()),
    const TaskItem('Task 06', Set2Hard06()),
    const TaskItem('Task 07', Set2Hard07()),
    const TaskItem('Task 08', Set2Hard08()),
    const TaskItem('Task 09', Set2Hard09()),
    TaskItem('Task 10', p.ChangeNotifierProvider(create: (_) => AuthProvider(), child: const Set2Hard10())),
  ];

  @override
  Widget build(BuildContext context) {
    final easy = _selectedModule == 0 ? _module1Easy : _module2Easy;
    final moderate = _selectedModule == 0 ? _module1Moderate : _module2Moderate;
    final hard = _selectedModule == 0 ? _module1Hard : _module2Hard;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Practical Catalog'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        actions: [
          DropdownButton<int>(
            value: _selectedModule,
            underline: const SizedBox(),
            items: const [
              DropdownMenuItem(value: 0, child: Text('Module I')),
              DropdownMenuItem(value: 1, child: Text('Module II')),
            ],
            onChanged: (val) {
              if (val != null) {
                setState(() {
                  _selectedModule = val;
                });
              }
            },
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _buildHeader(context),
          ),
          _buildCategoryHeader(context, 'Easy Practicals', Colors.green),
          _buildTaskGrid(context, easy),
          _buildCategoryHeader(context, 'Moderate Practicals', Colors.orange),
          _buildTaskGrid(context, moderate),
          _buildCategoryHeader(context, 'Hard Practicals', Colors.red),
          _buildTaskGrid(context, hard),
          const SliverPadding(padding: EdgeInsets.only(bottom: 20)),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(myProfileImageUrl),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  myName,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  myRollNumber,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  myCourse,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  myCollegeName,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryHeader(BuildContext context, String title, Color color) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Divider(color: color.withValues(alpha: 0.5)),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskGrid(BuildContext context, List<TaskItem> tasks) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 2.5,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final task = tasks[index];
            return Card(
              elevation: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => task.widget),
                  );
                },
                borderRadius: BorderRadius.circular(12),
                child: Center(
                  child: Text(
                    task.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
          childCount: tasks.length,
        ),
      ),
    );
  }
}

class TaskItem {
  final String name;
  final Widget widget;
  const TaskItem(this.name, this.widget);
}

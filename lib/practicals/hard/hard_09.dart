import 'package:flutter/material.dart';
import '../../assignments/my_details.dart';

void main() {
  runApp(const Hard09App());
}

class Hard09App extends StatelessWidget {
  const Hard09App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Hard09(),
    );
  }
}

class Hard09 extends StatelessWidget {
  const Hard09({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 700) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _buildGeneralSettings(context)),
                Expanded(child: _buildMarksTable(context)),
              ],
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: [
                  _buildGeneralSettings(context),
                  _buildMarksTable(context),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildGeneralSettings(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Name'),
          subtitle: Text(myName),
          leading: const Icon(Icons.person),
        ),
        ListTile(
          title: const Text('College'),
          subtitle: Text(myCollegeName),
          leading: const Icon(Icons.school),
        ),
        ListTile(
          title: const Text('City'),
          subtitle: Text(myCity),
          leading: const Icon(Icons.location_city),
        ),
      ],
    );
  }

  Widget _buildMarksTable(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Table(
        border: TableBorder.all(),
        children: [
          const TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Subject', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Marks', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          ...mySubjectMarks.entries.map((entry) => TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(entry.key),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(entry.value.toString()),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

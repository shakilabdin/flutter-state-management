import 'package:flutter/material.dart';
import 'screens/tasks.dart';

void main() {
  runApp(TaskLister());
}

class TaskLister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
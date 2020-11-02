import 'package:flutter/material.dart';
import 'package:tasklister/components/task_tile.dart';
import 'package:tasklister/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (bool checkboxState) {
              taskData.toggleCheckbox(task);
            },
            longPressCallback: () {
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}

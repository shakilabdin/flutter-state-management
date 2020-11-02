import 'package:flutter/foundation.dart';
import 'package:tasklister/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy cheese'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void toggleCheckbox(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void addNewTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}

import 'package:flutter/foundation.dart';
import 'package:todoye/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    // Task(taskName: "task 1"),
    // Task(taskName: "task 2"),
    // Task(taskName: 'task 3'),
  ];

  void addTask(String newTaskTitle) {
    final task = Task(taskName: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void uptadeTask(Task task) {
    task.toggelDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}

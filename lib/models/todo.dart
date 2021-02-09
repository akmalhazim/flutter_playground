import 'package:flutter/material.dart';

class Todo extends ChangeNotifier {
  List<Task> tasks = [];

  addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }
}

class Task {
  String task;
  Task(this.task);
}

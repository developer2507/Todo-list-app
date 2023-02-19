import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_app/models/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread')
  ];

  UnmodifiableListView get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTitle){
    final task = Task(name: newTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
}
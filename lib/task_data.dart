import 'package:flutter/material.dart';
import 'package:todoey/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Example Task // Long press to remove'),
  ];
  // UnmodifiableListView get tasks {
  //   return UnmodifiableListView(_tasks);
  // }

  void addTask(String newToDoTask) {
    final task = Task(name: newToDoTask);
    // try{
    //   if(newToDoTask = null)
    //   tasks.add(task);
    //   notifyListeners();
    // }
    // catch(e){}

    tasks.add(task);
    notifyListeners();
  }

  int get taskCount {
    return tasks.length;
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}

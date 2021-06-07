import 'package:flutter/material.dart';

import 'package:todoey/task_data.dart';
import 'package:todoey/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTile: task.name,
            isChecked: task.isDone,
            checkboxcallback: (state) {
              taskData.updateTask(task);
            },
            longpressCallback: () {
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}

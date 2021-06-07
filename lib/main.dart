import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/task_data.dart';

import 'package:todoey/first_screen.dart';

void main() {
  runApp(
    MyTodoey(),
  );
}

class MyTodoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskHomePage(),
      ),
    );
  }
}

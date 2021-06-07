import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'task_data.dart';

class AddTaskPage extends StatefulWidget {
  @override
  _AddTaskPageState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  String newToDoText;
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), topLeft: Radius.circular(25)),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w800,
                fontSize: 30,
              ),
            ),
            TextField(
              controller: myController,
              cursorColor: Colors.lightBlueAccent,
              cursorHeight: 25,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newToDoText = value;
              },
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              height: 42,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                // final task = Task(name: newToDoText);
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newToDoText);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

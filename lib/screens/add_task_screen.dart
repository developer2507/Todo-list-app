import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  // const AddTaskScreen({super.key, required this.addTaskCallBack});

  // final Function addTaskCallBack;

  @override
  Widget build(BuildContext context) {

    String? newTaskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            MaterialButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

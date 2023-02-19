import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/models/tasks.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {


  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxCallBack: (checkboxState) {
            Provider.of<TaskData>(context, listen: false).updateTask(Provider.of<TaskData>(context,listen: false).tasks[index]);          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}

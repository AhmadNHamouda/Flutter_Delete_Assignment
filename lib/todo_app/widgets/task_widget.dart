import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Task task;
  TaskWidget(this.task, this.fun);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: CheckboxListTile(
        secondary: Icon(Icons.delete),
        value: task.isComplete,
        onChanged: (v) {
          fun(task);
        },
        title: Text(task.title),
      ),
    );
  }
}

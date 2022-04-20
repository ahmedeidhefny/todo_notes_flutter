import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import 'task_tile.dart';
import 'package:todo_notes_flutter/models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: Provider.of<TaskData>(context).tasks[index].taskTitle,
        setCheckedState: Provider.of<TaskData>(context).tasks[index].isDone,
        toggleCheckboxState: (newValue) {
            //widget.tasks[index].isTaskDone();
        },);
    }, itemCount: Provider.of<TaskData>(context).tasks.length,);
  }
}
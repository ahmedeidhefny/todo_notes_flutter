import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_notes_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: widget.tasks[index].taskTitle,
        setCheckedState: widget.tasks[index].isDone,
        toggleCheckboxState: (newValue) {
          setState(() {
            widget.tasks[index].isTaskDone();
          });
        },);
    }, itemCount: widget.tasks.length,);
  }
}
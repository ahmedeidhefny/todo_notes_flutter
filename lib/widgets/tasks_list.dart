import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_notes_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskTitle: 'This is a Task'),
    Task(taskTitle: 'This is a Task2'),
    Task(taskTitle: 'This is a Task3')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: tasks[index].taskTitle,
        setCheckedState: tasks[index].isDone,
        toggleCheckboxState: (newValue) {
          setState(() {
            tasks[index].isDone;
          });
        },);
    }, itemCount: tasks.length,);
  }
}
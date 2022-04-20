import 'package:flutter/material.dart';
import 'package:todo_notes_flutter/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(taskTitle: 'This is a Task'),
    Task(taskTitle: 'This is a Task2'),
    Task(taskTitle: 'This is a Task3')
  ];

}
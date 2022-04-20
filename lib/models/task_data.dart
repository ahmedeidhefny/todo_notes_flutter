import 'package:flutter/material.dart';
import 'package:todo_notes_flutter/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(taskTitle: 'This is a Task'),
    Task(taskTitle: 'This is a Task2'),
    Task(taskTitle: 'This is a Task3')
  ];

  List<Task> get tasks => _tasks;

  int get taskCount => _tasks.length;

  void addTask(String taskTitle){
    final task = Task(taskTitle: taskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void changeTaskChecked(int index){
    _tasks[index].isTaskDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}
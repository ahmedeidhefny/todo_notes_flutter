import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import 'task_tile.dart';
import 'package:todo_notes_flutter/models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          Task task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.taskTitle,
            setCheckedState: task.isDone,
            toggleCheckboxState: (newValue) {
              taskData.changeTaskChecked(index);
            },
            onLongPressCallbacks: (){
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}

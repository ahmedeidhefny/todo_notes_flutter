import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_notes_flutter/constants.dart';
import 'package:todo_notes_flutter/screens/add_new_task_screen.dart';
import 'package:todo_notes_flutter/widgets/tasks_list.dart';
import 'package:todo_notes_flutter/models/task.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Task> tasks = [
    Task(taskTitle: 'This is a Task'),
    Task(taskTitle: 'This is a Task2'),
    Task(taskTitle: 'This is a Task3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddNewTaskScreen(
                  taskCallbacks: (newTaskTitle){
                    setState(() {
                      tasks.add(Task(taskTitle: newTaskTitle));
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.list,
                        size: 30.0,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Todoey',
                      style: kTitleTextStyle,
                    ),
                    Text(
                      '${tasks.length} Tasks',
                      style: kSubTitleTextStyle,
                    ),
                  ],
                )),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                decoration: kDecorationRadiusOnlyTop,
                child: TasksList(tasks),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

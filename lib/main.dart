import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_notes_flutter/models/task_data.dart';
import 'package:todo_notes_flutter/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData() ,
      child: MaterialApp(
        theme: ThemeData.light(),
        home: HomeScreen(),
      ),
    );
  }
}



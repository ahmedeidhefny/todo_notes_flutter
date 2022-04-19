import 'package:flutter/material.dart';
import 'package:todo_notes_flutter/constants.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(25.0),
        decoration: kDecorationRadiusOnlyTop,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
            textAlign: TextAlign.center,
            style: kAddTaskTextStyle,),
            TextField(
              onTap: () {},
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'enter the task name',
                hintStyle: TextStyle(
                  color: Colors.grey.shade500
                )
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RawMaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all( Radius.circular(7.0))
              ),
              onPressed: () {},
              fillColor: Colors.lightBlueAccent,
              child: Text('Add', style: kAddButtonTextStyle,),
            )
          ],
        ),
      ),
    );
  }
}

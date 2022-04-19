import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        'This is a task..',
        style: TextStyle(
          decoration:
              _isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: TaskCheckbox(
        setCheckedState: _isChecked,
        toggleCheckboxState: (newValue) {
          setState(() {
            _isChecked = newValue ?? true;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool setCheckedState;
  final Function(bool? value) toggleCheckboxState;

  TaskCheckbox(
      {required this.toggleCheckboxState, required this.setCheckedState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: setCheckedState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckboxState,
    );
  }
}

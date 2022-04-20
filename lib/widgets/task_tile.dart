import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool setCheckedState;
  final String taskTitle;
  final Function(bool? value) toggleCheckboxState;

  TaskTile(
      {required this.setCheckedState,
      required this.taskTitle,
      required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: setCheckedState
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: setCheckedState,
        activeColor: Colors.lightBlueAccent,
        onChanged: toggleCheckboxState,
      ),
    );
  }
}

// TaskCheckbox(
// setCheckedState: _isChecked,
// toggleCheckboxState: (newValue) {
// setState(() {
// _isChecked = newValue ?? true;
// });
// },
// ),

// class TaskCheckbox extends StatelessWidget {
//   final bool setCheckedState;
//   final Function(bool? value) toggleCheckboxState;
//
//   TaskCheckbox(
//       {required this.toggleCheckboxState, required this.setCheckedState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: setCheckedState,
//       activeColor: Colors.lightBlueAccent,
//       onChanged: toggleCheckboxState,
//     );
//   }
// }

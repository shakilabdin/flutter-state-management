import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback});
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        onChanged: checkboxCallback,
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}

// void toggleCheckboxCallback(bool newValue) {
//   setState(() {
//     isChecked = newValue;
//   });
// }

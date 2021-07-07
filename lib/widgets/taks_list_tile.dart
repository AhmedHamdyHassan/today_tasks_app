import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function toggleCheckBox;
  final Function deleteTask;
  TaskListTile(
      {this.taskName, this.isChecked, this.toggleCheckBox, this.deleteTask});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckBox,
      ),
    );
  }
}

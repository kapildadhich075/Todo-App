import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{
  final bool isChecked;
  final String taskTile;
  final Function checkboxCallback;
  final Function onLongPress;

  TaskTile({this.isChecked, this.taskTile,this.checkboxCallback,this.onLongPress});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

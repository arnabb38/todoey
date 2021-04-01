import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Task 1",
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckBoxState: (bool checkBoxCheck) {
          setState(() {
            isChecked = checkBoxCheck;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBoxState;

  const TaskCheckBox({this.checkBoxState, this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkBoxState,
        onChanged: toggleCheckBoxState);
  }
}

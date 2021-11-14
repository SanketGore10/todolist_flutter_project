import 'package:flutter/material.dart';
import 'package:todoye/widgets/task_checkbox.dart';

class TaskTile extends StatelessWidget {
  late final bool isChecked;
  late final String taskTitel;
  final Function toggelCheckboxState;
  final VoidCallback longPressCallback;
  TaskTile({
    required this.isChecked,
    required this.taskTitel,
    required this.toggelCheckboxState,  
    required this.longPressCallback,  
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitel,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (newValue) {
            toggelCheckboxState(newValue);
          }),
    );
  }
}

// TaskCheckbox(
//           checkboxState: isChecked,
//           toggelCheckboxState: (bool? checkboxState) {
//             setState(() {
//               isChecked = checkboxState!;
//             });
//           })
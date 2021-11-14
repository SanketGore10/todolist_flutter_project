import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({
    this.checkboxState,
    this.toggelCheckboxState,
  });

  final bool? checkboxState;
  final Function(bool?)? toggelCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggelCheckboxState,
    );
  }
}

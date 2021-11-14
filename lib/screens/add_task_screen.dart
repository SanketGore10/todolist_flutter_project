import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoye/models/task_data.dart';
import 'package:todoye/models/tasks.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 15.0,
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 7.0,
                  bottom: 7.0,
                  left: 15.0,
                  right: 15.0,
                ),
                primary: Colors.white,
                backgroundColor: Colors.lightBlueAccent,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
              onPressed: () {
                
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text(
                "Add",
              ),
            )
          ],
        ),
      ),
    );
  }
}

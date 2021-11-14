import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoye/models/task_data.dart';
// import 'package:todoye/models/tasks.dart';
import 'package:todoye/widgets/task_tile.dart';
// import 'task_screen.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        // assert(index != null);
        final  task = Provider.of<TaskData>(context).tasks[index];
        return TaskTile(
          longPressCallback: (){
            Provider.of<TaskData>(context, listen: false)
                  .deleteTask(task);
          },
            isChecked: task.isDone,
            taskTitel:task.taskName,
            toggelCheckboxState: (checkboxState) {
              Provider.of<TaskData>(context, listen: false)
                  .uptadeTask(task);
            },
            
            );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}

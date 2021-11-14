import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoye/models/task_data.dart';
import 'package:todoye/screens/task_screen.dart';

void main() => runApp(const Todoye());

class Todoye extends StatelessWidget {
  const Todoye({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return TaskData();
      },
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}

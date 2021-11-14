class Task {
  late final String taskName;
  bool isDone;
  Task({required this.taskName, this.isDone = false});

  void toggelDone(){
    isDone = !isDone;
  }
}

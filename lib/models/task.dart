class Task{
  final String taskTitle;
  bool isDone;

  Task({required this.taskTitle, this.isDone = false});

  void isTaskDone(){
    this.isDone = !this.isDone;
  }
}
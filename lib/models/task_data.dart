import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Milk"),
    Task(name: "Eggs"),
    Task(name: "Water"),
  ];

  int get taskCount {
    return tasks.length;
  }
}

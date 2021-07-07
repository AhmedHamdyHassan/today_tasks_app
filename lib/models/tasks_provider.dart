import 'package:flutter/foundation.dart';
import 'package:today_tasks_app/models/tasks.dart';

class TasksProvider extends ChangeNotifier {
  List<Tasks> listOfTasks = [
    Tasks(
      name: 'Buy Gaming Mouse',
    ),
    Tasks(
      name: 'Buy Ceclion Special Skin',
    ),
    Tasks(
      name: 'Buy Yuumi Skin',
    ),
  ];
  void addTask(String name) {
    print(name);
    listOfTasks.add(
      Tasks(name: name),
    );
    notifyListeners();
  }

  void toggleTask(int index, bool value) {
    listOfTasks[index].setIsChecked(value);
    notifyListeners();
  }

  void deleteTask(Tasks task) {
    if (listOfTasks.length == 1) {
      listOfTasks = <Tasks>[];
    } else {
      listOfTasks.remove(task);
    }
    notifyListeners();
  }
}

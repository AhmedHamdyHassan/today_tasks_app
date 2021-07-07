import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_tasks_app/models/tasks_provider.dart';
import '../widgets/taks_list_tile.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, data, child) {
        return data.listOfTasks.length != 0
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return TaskListTile(
                    taskName: data.listOfTasks[index].name != null
                        ? data.listOfTasks[index].name
                        : 'error',
                    isChecked: data.listOfTasks[index].isChecked,
                    toggleCheckBox: (value) {
                      data.toggleTask(index, value);
                    },
                    deleteTask: () {
                      data.deleteTask(data.listOfTasks[index]);
                    },
                  );
                },
                itemCount: data.listOfTasks.length,
              )
            : Center(
                child: Text('No tasks to show!!'),
              );
      },
    );
  }
}

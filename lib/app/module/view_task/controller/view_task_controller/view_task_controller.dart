import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:razinsoft/app/shared/model/task_model/tasks.dart';

import '../../../../shared/repository/task_repository.dart';

class ViewTaskController extends GetxController {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  var startDate = Rxn<DateTime>();
  var endDate = Rxn<DateTime>();
  final repository = TaskRepository();
  late Tasks currentTask;

  void loadTask(Tasks task) {
    currentTask = task;
    titleController.text = task.title;
    descriptionController.text = task.description;
    startDate.value = task.startDate;
    endDate.value = task.endDate;
  }

 Future<void>updateTask() async {
    final updateTask = Tasks(
      id: currentTask.id,
      title: titleController.text,
      description: descriptionController.text,
      startDate: startDate.value!,
      endDate: endDate.value!,
      isCompleted: true,
    );

    await repository.updateTask(task: updateTask);
  }
}

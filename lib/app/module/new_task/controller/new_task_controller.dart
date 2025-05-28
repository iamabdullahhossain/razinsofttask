import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:razinsoft/app/shared/repository/task_repository.dart';

import '../../../shared/model/task_model/tasks.dart';

class NewTaskController extends GetxController {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  var startDate = Rxn<DateTime>();
  var endDate = Rxn<DateTime>();

  final taskRepository = TaskRepository();

  void addTask() {
    if (titleController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty &&
        startDate.value != null &&
        endDate.value != null) {
      final task = Tasks.create(
        title: titleController.text,
        description: descriptionController.text,
        startDate: startDate.value!,
        endDate: endDate.value!,
      );
      clearInputs();
      taskRepository.addTask(task: task);
      Get.snackbar("Success", "Task Added Successfully");
    }
    else{
      Get.snackbar("Error", "Please fill all fields");
    }
  }

  void clearInputs() {
    titleController.clear();
    descriptionController.clear();
    startDate.value = null;
    endDate.value = null;
  }

}

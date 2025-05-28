import 'package:get/get.dart';
import 'package:razinsoft/app/shared/model/task_model/tasks.dart';
import 'package:razinsoft/app/shared/repository/task_repository.dart';

class TaskController extends GetxController{
  final _taskRepository = TaskRepository();

  var tasks = <Tasks>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadTask();
  }

  void loadTask() {
    final box = _taskRepository.box;
    tasks.value = box.values.toList();
  }

  Future<void> addTask(Tasks task) async{
    await _taskRepository.addTask(task: task);
    loadTask();
  }

  Future<void> updateTask(Tasks task) async{
    await _taskRepository.updateTask(task: task);
    loadTask();
  }

  Future<void> deleteTask(Tasks task) async{
    await _taskRepository.deleteTask(task: task);
    loadTask();
  }

}
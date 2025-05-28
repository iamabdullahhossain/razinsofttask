import 'package:get/get.dart';
import 'package:razinsoft/app/shared/controller/task_controller/task_controller.dart';
import 'package:razinsoft/app/shared/model/task_model/tasks.dart';
import 'package:razinsoft/app/shared/repository/task_repository.dart';

class HomeController extends GetxController {
  final repository = TaskRepository();
  var tasks = <Tasks>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadTask();
  }

  void loadTask() {
    final box = repository.box;
    tasks.value = box.values.toList();
  }

 
  bool get hasTasks => tasks.isNotEmpty;
}

import 'package:hive/hive.dart';
import 'package:razinsoft/app/shared/model/task_model/tasks.dart';

class TaskRepository {
  static const boxName = 'todo';

  final Box<Tasks> box = Hive.box<Tasks>(boxName);

  Future<void> addTask({required Tasks task}) async{
    await box.put(task.id, task);
  }

  Future<Tasks?> getTask({required String id}) async{
    return box.get(id);
  }

  Future<void> updateTask({required Tasks task}) async{
    await task.save();
  }

  Future<void> deleteTask({required Tasks task})async{
    await task.delete();
  }

}

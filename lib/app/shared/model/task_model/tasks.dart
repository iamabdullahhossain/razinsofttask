import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'tasks.g.dart';
@HiveType(typeId: 0)
class Tasks extends HiveObject {
  Tasks({
    required this.id,
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.isCompleted
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  String title;
  @HiveField(2)
  String description;
  @HiveField(3)
  DateTime startDate;
  @HiveField(4)
  DateTime endDate;
  @HiveField(5)
  bool isCompleted;

  factory Tasks.create({
    required String? title,
    required String? description,
    required DateTime? startDate,
   required DateTime? endDate
  })=>
      Tasks(id: Uuid().v1(),
          title: title ?? "",
          description: description ?? "",
          startDate: startDate ?? DateTime.now(),
          endDate: endDate ?? DateTime.now(),
          isCompleted: false);

}

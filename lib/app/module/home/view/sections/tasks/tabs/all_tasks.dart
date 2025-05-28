import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:razinsoft/app/module/home/controller/home_controller.dart';
import 'package:razinsoft/app/module/view_task/controller/view_task_controller/view_task_controller.dart';
import 'package:razinsoft/app/module/view_task/view/view_task_screen.dart';

class AllTasks extends StatefulWidget {
  HomeController controller;

  AllTasks({super.key, required this.controller});

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;
    return Obx(() {
      if (!controller.hasTasks) {
        Center(
          child: Text(
            "No Task Found",
            style: TextStyle(
              color: const Color(0xFF0D101C),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 1.30,
            ),
          ),
        );
      }
      return ListView.builder(
        itemCount: controller.tasks.length,
        itemBuilder: (context, items) {
          final tasks = controller.tasks[items];
          return InkWell(
            onTap: () {
              final task = controller.tasks[items];
              final viewController = Get.put(ViewTaskController());
              viewController.loadTask(task);

              Get.to(ViewTaskScreen(controller: viewController));
            },
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFDCE0EE)),
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tasks.title,
                      style: TextStyle(
                        color: const Color(0xFF0D101C),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.30,
                      ),
                    ),
                    Gap(5),
                    Text(
                      tasks.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: const Color(0xFF6D7491),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 5,
                          children: [
                            Image.asset(
                              "assets/icons/timer.png",
                              height: 12,
                              width: 12,
                            ),
                            Text(
                              DateFormat.yMMMMd().format(tasks.startDate),
                              style: TextStyle(
                                color: const Color(0xFF6D7491),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.40,
                              ),
                            ),
                          ],
                        ),
                       // Text(tasks.isCompleted.toString())

                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
  }
}

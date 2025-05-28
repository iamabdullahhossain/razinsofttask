import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:horizontalcalender/horizontalcalendar.dart';
import 'package:razinsoft/app/module/new_task/controller/new_task_controller.dart';
import 'package:razinsoft/app/module/new_task/view/sections/appbar/newtask_appbar.dart';
import 'package:razinsoft/app/module/new_task/view/sections/create_task/create_task.dart';
import 'package:razinsoft/app/shared/controller/screen_controller/screen_controller.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    final FixedExtentScrollController itemController =
        FixedExtentScrollController();
    final controller = Get.put(NewTaskController());
    return SafeArea(
      child: Scaffold(
        body: Container(
          // margin: EdgeInsets.only(left: 20, right: 20, top: 15),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, const Color(0xFFDFE3F0)],
              begin: Alignment(0.50, -0.00),
              end: Alignment(0.50, 1.00),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Container(
            height: ScreenController.screenHeight,
            width: ScreenController.screenWidth,
            // margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: NewtaskAppbar(),
                ),
                Gap(70),
                CreateTask(controller: controller,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

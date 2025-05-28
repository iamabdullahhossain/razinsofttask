import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:razinsoft/app/module/new_task/view/sections/appbar/newtask_appbar.dart';
import 'package:razinsoft/app/module/view_task/controller/view_task_controller/view_task_controller.dart';
import 'package:razinsoft/app/module/view_task/view/sections/appbar/viewtask_appbar.dart';
import 'package:razinsoft/app/module/view_task/view/sections/details/view_details.dart';
import 'package:razinsoft/app/shared/controller/screen_controller/screen_controller.dart';

import '../../new_task/view/sections/create_task/create_task.dart';

class ViewTaskScreen extends StatefulWidget {

    ViewTaskScreen({super.key, required this.controller});
    ViewTaskController controller;

  @override
  State<ViewTaskScreen> createState() => _ViewTaskScreenState();
}

class _ViewTaskScreenState extends State<ViewTaskScreen> {

  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;
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
                  child: ViewtaskAppbar(),
                ),
                Gap(100),
                ViewDetails(controller: controller,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

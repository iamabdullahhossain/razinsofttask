import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:razinsoft/app/module/all_task/view/sections/appbar/alltask_appbar.dart';
import 'package:razinsoft/app/module/all_task/view/sections/calander/alltask_calander.dart';
import 'package:razinsoft/app/module/all_task/view/sections/tasks/alltask_show.dart';
import 'package:razinsoft/app/shared/controller/screen_controller/screen_controller.dart';

class AllTaskScreen extends StatefulWidget {
  const AllTaskScreen({super.key});

  @override
  State<AllTaskScreen> createState() => _AllTaskScreenState();
}

class _AllTaskScreenState extends State<AllTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Gap(20),
                AlltaskAppbar(),
                Gap(40),
                AlltaskCalander(),
                Gap(10),
                Expanded(child: AlltaskShow()),
                Gap(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

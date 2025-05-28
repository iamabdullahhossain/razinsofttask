import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:razinsoft/app/module/home/controller/home_controller.dart';
import 'package:razinsoft/app/module/home/view/sections/appbar/home_appbar.dart';
import 'package:razinsoft/app/module/home/view/sections/summary/home_summary.dart';
import 'package:razinsoft/app/module/home/view/sections/tasks/home_task.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = Get.put(HomeController());

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
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                HomeAppbar(),
                Gap(35),
                HomeSummary(controller: controller,),
                Gap(35),
                HomeTask(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

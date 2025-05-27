import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:razinsoft/app/module/all_task/view/all_task_screen.dart';
import 'package:razinsoft/app/module/home/view/home_screen.dart';
import 'package:razinsoft/app/module/home/view/sections/tasks/tabs/all_tasks.dart';
import 'package:razinsoft/app/module/new_task/view/new_task_screen.dart';
import 'package:razinsoft/app/module/new_task/view/sections/create_task/create_task.dart';
import 'package:razinsoft/app/shared/controller/bottom_navigation_controller/bottom_navigation_controller.dart';

import 'build_nav_item.dart';

class BottomNavigationScreen extends StatelessWidget {
  BottomNavigationScreen({super.key});

  final controller = Get.put(BottomNavigationController());

  final List<Widget> pages = [
    HomeScreen(),
    NewTaskScreen(),
    AllTaskScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        child:  BottomBar(
          barColor: Colors.white,
          barAlignment: Alignment.bottomCenter,
          borderRadius: BorderRadius.circular(172),
          iconHeight: 30,
          iconWidth: 30,
         //s duration: Duration(microseconds: 100),
          curve: Curves.easeInOut,
          showIcon: true,
          hideOnScroll: true,
          body: (context, controller) {
            return Obx(() => pages[this.controller.selectedIndex.value]);
          },
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BuildNavItem(
                    controller: controller,
                    //  icon: Icons.dashboard,
                    icon: "assets/icons/home.png",
                    selectedIcon: "assets/icons/home.png",
                    index: 0,
                  ),
                  BuildNavItem(
                    controller: controller,
                    //   icon: Icons.person,
                    icon: "assets/icons/clipboard.png",
                    selectedIcon: "assets/icons/clipboard.png",
                    index: 1,
                  ),
                  BuildNavItem(
                    controller: controller,
                    // icon: Icons.article,
                    icon: "assets/icons/calendar.png",
                    selectedIcon: "assets/icons/calendar.png",
                    index: 2,
                  ),

                ],
              )),
        ),
      ),
    );
  }
}

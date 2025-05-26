import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:razinsoft/app/module/home/view/sections/tasks/tabs/all_tasks.dart';
import 'package:razinsoft/app/module/home/view/sections/tasks/tabs/completed_tasks.dart';
import 'package:razinsoft/app/shared/controller/screen_controller/screen_controller.dart';

import '../../../../../core/values/app_colors.dart';

class HomeTask extends StatefulWidget {
  const HomeTask({super.key});

  @override
  State<HomeTask> createState() => _HomeTaskState();
}

class _HomeTaskState extends State<HomeTask> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Today task",
            style: TextStyle(
              color: const Color(0xFF0D101C),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 1.30,
            ),
          ),
          Gap(10),
          Container(
            height: 40,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(25),
            ),
            child: TabBar(
              indicator: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(25),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black54,
              labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              tabs: const [Tab(text: "All tasks"), Tab(text: "Completed")],
              dividerColor: Colors.transparent,
            ),
          ),
          SizedBox(
            height: ScreenController.screenHeight*0.5,
              child: TabBarView(children: [AllTasks(), CompletedTasks()])),
        ],
      ),
    );
  }
}

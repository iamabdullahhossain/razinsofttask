import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:razinsoft/app/module/all_task/view/all_task_screen.dart';
import 'package:razinsoft/app/module/home/view/home_screen.dart';
import 'package:razinsoft/app/module/new_task/view/new_task_screen.dart';
import 'package:razinsoft/app/shared/controller/screen_controller/screen_controller.dart';
import 'package:razinsoft/app/shared/model/task_model/tasks.dart';
import 'package:razinsoft/app/shared/repository/task_repository.dart';
import 'package:razinsoft/app/shared/view/bottom_navigation/bottom_navigation_screen.dart';

void main() async{

  await Hive.initFlutter();

  Hive.registerAdapter<Tasks>(TasksAdapter());

  var box = await Hive.openBox<Tasks>(TaskRepository.boxName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Razin Soft Task Management',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        fontFamily: 'Poppins',
      ),
      home:  BottomNavigationScreen(),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        ScreenController.sizeInitialization(context);
        return child!;
      },
    );
  }
}

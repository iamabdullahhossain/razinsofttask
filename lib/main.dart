import 'package:flutter/material.dart';
import 'package:razinsoft/app/module/home/view/home_screen.dart';
import 'package:razinsoft/app/module/new_task/view/new_task_screen.dart';
import 'package:razinsoft/app/shared/controller/screen_controller/screen_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Razin Soft Task Management',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        fontFamily: 'Poppins',
      ),
      home: const NewTaskScreen(),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        ScreenController.sizeInitialization(context);
        return child!;
      },
    );
  }
}

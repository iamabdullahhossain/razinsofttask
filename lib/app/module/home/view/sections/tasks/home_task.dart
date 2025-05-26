import 'package:flutter/material.dart';

class HomeTask extends StatefulWidget {
  const HomeTask({super.key});

  @override
  State<HomeTask> createState() => _HomeTaskState();
}

class _HomeTaskState extends State<HomeTask> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Today task",
          style: TextStyle(
            color: const Color(0xFF0D101C),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 1.30,
          ),
        ),

      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:razinsoft/app/module/view_task/view/view_task_screen.dart';

import '../../../../../core/values/app_colors.dart';

class AlltaskAppbar extends StatelessWidget {
  const AlltaskAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("All Task",  style: TextStyle(
          color: const Color(0xFF112022),
          fontSize: 18,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: 1.30,
          letterSpacing: -0.36,
        ),),
        InkWell(
          onTap: (){

          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: ShapeDecoration(
              color: Color(0xFFEEEFFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Text(
              "Create New",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF613BE7),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 1.40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

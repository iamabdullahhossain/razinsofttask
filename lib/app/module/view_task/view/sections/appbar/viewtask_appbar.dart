import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ViewtaskAppbar extends StatelessWidget {
  const ViewtaskAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Image.asset(
                "assets/icons/back.png",
                height: 20,
                width: 20,
              ),
            ),
            Gap(10),
            Text(
              "View Task",
              style: TextStyle(
                color: const Color(0xFF112022),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 1.30,
                letterSpacing: -0.36,
              ),
            ),
          ],
        ),

        InkWell(
          onTap: () {
            print("Delete");
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: ShapeDecoration(
              color: Color(0xFFFFE1E1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Text(
              "Delete",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFFFF494C), fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }
}

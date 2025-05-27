import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:razinsoft/app/module/all_task/controller/calander_controller/calander_controller.dart';

class AlltaskCalander extends StatefulWidget {
  const AlltaskCalander({super.key});

  @override
  State<AlltaskCalander> createState() => _AlltaskCalanderState();
}

class _AlltaskCalanderState extends State<AlltaskCalander> {
  final controller = Get.put(CalanderController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.weekDates.length,
        itemBuilder: (context, index) {
          final date = controller.weekDates[index];
          final dayName = controller.getDayName(date);
          final dayNumber = date.day;
          return Obx(() {
            final bool isSelected = controller.selectedIndex.value == index;

            return GestureDetector(
              onTap: () => controller.selectDate(index),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? Color(0xFF7A5EFF) : Color(0xFFF2F5FA),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      dayName.toString(),
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      dayNumber.toString(),
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        },
      ),
    );
  }
}

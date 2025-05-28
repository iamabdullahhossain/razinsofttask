import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import '../../../../home/controller/home_controller.dart';
import '../../../controller/calander_controller/calander_controller.dart';

class AlltaskShow extends StatefulWidget {
  const AlltaskShow({super.key});

  @override
  State<AlltaskShow> createState() => _AlltaskShowState();
}

class _AlltaskShowState extends State<AlltaskShow> {
  final homeController = Get.find<HomeController>();
  final calanderController = Get.find<CalanderController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final selectedDate = calanderController.selectedDate.value;
      final filteredTasks =
          homeController.tasks.where((task) {
            // Compare only date part
            return isSameDate(task.startDate, selectedDate);
          }).toList();

      if (filteredTasks.isEmpty) {
        return Center(child: Text('No task found'));
      }
      return ListView.builder(
        itemCount: filteredTasks.length,
        itemBuilder: (context, index) {
          final task = filteredTasks[index];
          return Container(
            width: double.infinity,

            margin: EdgeInsets.only(top: 10),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFDCE0EE)),
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.title,
                    style: TextStyle(
                      color: const Color(0xFF0D101C),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.30,
                    ),
                  ),
                  Gap(5),
                  Text(
                    // 'Redesign the homepage of our website to improve user engagement and align with our updated branding guidelines. Focus on creating an intuitive user interface with enhanced visual appeal.',
                    task.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: const Color(0xFF6D7491),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.40,
                    ),
                  ),
                  Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 5,
                        children: [
                          Image.asset(
                            "assets/icons/timer.png",
                            height: 12,
                            width: 12,
                          ),
                          Text(
                            DateFormat('MMMM dd, yyyy').format(task.startDate),
                            style: TextStyle(
                              color: const Color(0xFF6D7491),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }

  bool isSameDate(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:razinsoft/app/module/view_task/controller/view_task_controller/view_task_controller.dart';

import '../../../../../core/values/app_colors.dart';
import '../../../../new_task/view/sections/create_task/datepicker.dart';

class ViewDetails extends StatefulWidget {
  ViewDetails({super.key, required this.controller});

  ViewTaskController controller;

  @override
  State<ViewDetails> createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                "Task Name",
                style: TextStyle(
                  color: const Color(0xFF0D101C),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 1.30,
                  letterSpacing: -0.28,
                ),
              ),

              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFDCE0EE)), // Gray border
                  color: Colors.white,
                ),
                child: TextField(
                  controller: controller.titleController,
                  cursorColor: AppColors.blackBold,
                  /* onChanged: (value) =>
                  controller.patientName.value = value,*/
                  decoration: InputDecoration(
                    hintText: 'Enter Your Task Name',
                    hintStyle: TextStyle(
                      color: const Color(0xFF6D7491),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.40,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 16, right: 8),
                  ),
                ),
              ),

              Text(
                "Task description",
                style: TextStyle(
                  color: const Color(0xFF0D101C),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 1.30,
                  letterSpacing: -0.28,
                ),
              ),

              Container(
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFDCE0EE)), // Gray border
                  color: Colors.white,
                ),
                child: TextField(
                   controller: controller.descriptionController,
                  cursorColor: AppColors.blackBold,
                  /* onChanged: (value) =>
                  controller.patientName.value = value,*/
                  decoration: InputDecoration(
                    hintText: 'Enter Your Task Description',
                    hintStyle: TextStyle(
                      color: const Color(0xFF6D7491),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.40,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 16, right: 8),
                  ),
                ),
              ),

                Row(
                children: [
                  Expanded(
                    child: datePicker(
                      "Start Date",
                      controller.startDate,
                          () async {
                        DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );
                        if (picked != null) controller.startDate.value = picked;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: datePicker(
                      "End Date",
                      controller.endDate,
                          () async {
                        DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );
                        if (picked != null) controller.endDate.value = picked;
                      },
                    ),
                  ),
                ],
              ),
              Gap(10),

              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFDCE0EE)), // Gray border
                  color: AppColors.buttonColor,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                  ),
                  onPressed: () {
                    controller.updateTask();
                   Get.snackbar("Success", "Task Updated Successfully");
                  },
                  child: Text(
                    "Complete",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1.40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

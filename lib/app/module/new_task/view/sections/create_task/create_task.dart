import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:razinsoft/app/shared/controller/screen_controller/screen_controller.dart';

import '../../../../../core/values/app_colors.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  @override
  Widget build(BuildContext context) {
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
                  // controller: controller.patientNameController.value,
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
                  // controller: controller.patientNameController.value,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Start Date",
                          style: TextStyle(
                            color: const Color(0xFF0D101C),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.30,
                          ),
                        ),
                        Gap(10),
                        Container(
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFDCE0EE)),
                            // Gray border
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "October, 15, 2025",
                                style: TextStyle(
                                  color: const Color(0xFF6D7491),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.40,
                                ),
                              ),
                              Gap(10),
                              Image.asset(
                                "assets/icons/calendar.png",
                                color: AppColors.buttonColor,
                                width: 16,
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "End Date",
                          style: TextStyle(
                            color: const Color(0xFF0D101C),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.30,
                          ),
                        ),
                        Gap(10),
                        Container(
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFDCE0EE)),
                            // Gray border
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "October, 15, 2025",
                                style: TextStyle(
                                  color: const Color(0xFF6D7491),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.40,
                                ),
                              ),
                              Gap(10),
                              Image.asset(
                                "assets/icons/calendar.png",
                                color: AppColors.buttonColor,
                                width: 16,
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
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
                  onPressed: () {},
                  child: Text(
                    "Create new tasks",
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

import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:razinsoft/app/core/values/app_colors.dart';
import 'package:razinsoft/app/shared/controller/screen_controller/screen_controller.dart';

class HomeSummary extends StatelessWidget {
  const HomeSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Summary",
          style: TextStyle(
            color: const Color(0xFF0D101C),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 1.30,
          ),
        ),
        Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                width: ScreenController.screenWidth * 0.5,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: AppColors.buttonColor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Color(0xFFEEEFFF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      "Assigned tasks",
                      style: TextStyle(
                        color: const Color(0xFF0D101C),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.40,
                      ),
                    ),
                    Text(
                      '21',
                      style: TextStyle(
                        color: const Color(0xFF613BE7),
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.30,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),

                width: ScreenController.screenWidth * 0.5,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF009F76)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Color(0xFFDEFFE7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      "Completed tasks",
                      style: TextStyle(
                        color: const Color(0xFF0D101C),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.40,
                      ),
                    ),
                    Text(
                      '31',
                      style: TextStyle(
                        color: const Color(0xFF009F76),
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.30,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

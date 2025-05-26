import 'package:flutter/cupertino.dart';
import 'package:razinsoft/app/core/values/app_colors.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Morning",
              style: TextStyle(
                color: AppColors.blackMedium,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "27th Sept 2025",
              style: TextStyle(
                color: AppColors.blackBold,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Image.asset(
            "assets/icons/notification.png",
            width: 24,
            height: 24,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:razinsoft/app/shared/controller/bottom_navigation_controller/bottom_navigation_controller.dart';

import '../../../core/values/app_colors.dart';

class BuildNavItem extends StatelessWidget {
  final String icon;
  final String selectedIcon;
  final int index;
  final BottomNavigationController controller;

  const BuildNavItem({
    super.key,
    required this.icon,
    required this.selectedIcon,
    required this.index,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          controller.changeIndex(index);
        },
        child: Obx(
              () =>
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Image.asset(controller.selectedIndex.value == index
                      ? selectedIcon
                      : icon, width: 20,
                    height: 20,
                    color: controller.selectedIndex.value == index
                        ? AppColors.buttonColor
                        : Colors.grey,),

                ],
              ),
        ));
  }
}

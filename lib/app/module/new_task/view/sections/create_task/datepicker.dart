import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';

import '../../../../../core/values/app_colors.dart';

Widget datePicker(String label, Rxn<DateTime> date, VoidCallback onTap) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label),
      const SizedBox(height: 10),
      GestureDetector(
        onTap: onTap,
        child: Obx(
          () => Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xFFDCE0EE)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  date.value != null
                      ? DateFormat.yMMMMd().format(date.value!)
                      : "Select date",
                  style: TextStyle(
                    color: const Color(0xFF6D7491),
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                Image.asset(
                  "assets/icons/calendar.png",
                  color: AppColors.buttonColor,
                  width: 16,
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

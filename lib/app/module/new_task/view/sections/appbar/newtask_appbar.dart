import 'package:flutter/material.dart';

class NewtaskAppbar extends StatelessWidget {
  const NewtaskAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Create new task",
      style: TextStyle(
        color: const Color(0xFF112022),
        fontSize: 18,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        height: 1.30,
        letterSpacing: -0.36,
      ),
    );
  }
}

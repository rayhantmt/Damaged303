import 'package:flutter/material.dart';

class CongratulaionsText extends StatelessWidget {
  const CongratulaionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Benefits Unlocked:',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xFF050505),
          ),
        ),
      ],
    );
  }
}

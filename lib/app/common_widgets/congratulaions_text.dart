import 'package:damaged303/app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CongratulaionsText extends StatelessWidget {
  const CongratulaionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Benefits Unlocked:',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xFF050505),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 40),
            Icon(Icons.check_circle, color: AppColors.primarycolor, size: 24.0),
            Text(
              'Unlimited Persona access',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xFF050505),
                fontSize: 16,
              ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 55),
            Icon(Icons.check_circle, color: AppColors.primarycolor, size: 24.0),
            Text(
              'Bookmark Favorite Prompts',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xFF050505),
                fontSize: 16,
              ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(),
            Icon(Icons.check_circle, color: AppColors.primarycolor, size: 24.0),
            Text(
              'Save conversations',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xFF050505),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

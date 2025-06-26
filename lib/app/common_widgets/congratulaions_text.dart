import 'package:damaged303/app/common_widgets/premium_basic_text.dart';

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
        PremiumBasicText(tittle: 'Unlimited Persona access'),
        SizedBox(height: 6),
        PremiumBasicText(tittle: 'Bookmark Favorite Prompts'),
        SizedBox(height: 6),
        PremiumBasicText(tittle: 'Save conversations'),
        SizedBox(height: 30),
      ],
    );
  }
}

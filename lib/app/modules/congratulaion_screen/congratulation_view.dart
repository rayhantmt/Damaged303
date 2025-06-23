import 'package:damaged303/app/common_widgets/button.dart';
import 'package:damaged303/app/common_widgets/congratulaions_text.dart';

import 'package:damaged303/app/modules/main_screen/main_screen_view.dart';
import 'package:damaged303/app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CongratulationView extends StatelessWidget {
  const CongratulationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Get.height * .1),
          Image.asset(AppImages.congratulations),
          Text(
            'Congratulations',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 34,
              color: Color(0xFF121212),
            ),
          ),
          SizedBox(height: Get.height * .05),
          CongratulaionsText(),
          SizedBox(height: Get.height * .25),
          GestureDetector(
            onTap: () {
              Get.offAll(MainScreen());
            },
            child: Button(title: 'Home'),
          ),
        ],
      ),
    );
  }
}

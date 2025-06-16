import 'package:damaged303/app/common_widgets/button.dart';
import 'package:damaged303/app/modules/splash_screen/second_splash.dart';
import 'package:damaged303/app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.splash),
          Text(
            'Welcome to your AI-powered \n              HR Assistant!',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 23,
              color: Color(0xFF050505),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Tailored for your role.Built for your challenges',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF7D848D),
            ),
          ),
          SizedBox(height: Get.height * 0.3),
          InkWell(
            onTap: () {
              Get.offAll(SecondSplash());
            },
            child: Button(title: 'Get Started'),
          ),
        ],
      ),
    );
  }
}

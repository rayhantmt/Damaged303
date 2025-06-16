import 'package:damaged303/app/common_widgets/button.dart';
import 'package:damaged303/app/common_widgets/splash_text.dart';
import 'package:damaged303/app/modules/log_in/log_in_view.dart';
import 'package:damaged303/app/utils/app_colors.dart';
import 'package:damaged303/app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdSplash extends StatelessWidget {
  const ThirdSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.splash, height: 200, width: 400),
          // SizedBox(height: 30),
          Text(
            'Al HR Persona',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: AppColors.primarycolor,
            ),
          ),
          SizedBox(height: 30),
          Text(
            ' Get fast, accurate HR Help From Your\n              AI-powered Assistant.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF050505),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Example Prompts',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0xFF050505),
            ),
          ),
          SizedBox(height: 10),

          SplashText(text: 'Prepare for a difficult conversation'),

          SplashText(text: 'What’s new in Caifonia labor law?'),
          SplashText(text: 'Talent Acquisition & Labor Trends'),
          SplashText(text: 'Compensation, Benefits & Rewards'),
          SplashText(text: 'People Development & Culture'),
          SizedBox(height: 30),
          Text(
            'Talore by role (HRBP, TA, etc)',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF050505),
            ),
          ),
          InkWell(
            onTap: () {
              Get.offAll(LogInView());
            },
            child: Button(title: 'Next'),
          ),
          // SizedBox(height: 30),
        ],
      ),
    );
    ;
  }
}

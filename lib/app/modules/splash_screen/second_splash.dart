import 'package:damaged303/app/common_widgets/button.dart';
import 'package:damaged303/app/common_widgets/splash_text.dart';
import 'package:damaged303/app/modules/splash_screen/third_splash.dart';
import 'package:damaged303/app/utils/app_colors.dart';
import 'package:damaged303/app/utils/app_images.dart';
import 'package:damaged303/app/utils/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondSplash extends StatelessWidget {
  const SecondSplash({super.key});

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
            'Personalized \n  News Feed',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: AppColors.primarycolor,
            ),
          ),
          SizedBox(height: 30),
          Text(
            AppText.secondsplash,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF050505),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Breading News on Impartent HR Topics',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0xFF050505),
            ),
          ),
          SizedBox(height: 10),

          SplashText(text: 'HR Strategy & Leadership'),

          SplashText(text: 'Workforce Com liance & Re ulation'),
          SplashText(text: 'Talent Acquisition & Labor Trends'),
          SplashText(text: 'Compensation, Benefits & Rewards'),
          SplashText(text: 'People Development & Culture'),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffE6ECEB),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primarycolor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffE6ECEB),
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Get.offAll(ThirdSplash());
            },
            child: Button(title: 'Next'),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

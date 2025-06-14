import 'package:damaged303/app/modules/log_in/log_in_view.dart';
import 'package:damaged303/app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () => Get.offAll(LogInView()));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset(AppImages.splash)),
    );
  }
}

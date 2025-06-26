import 'package:damaged303/app/utils/app_colors.dart';
import 'package:damaged303/app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              child: Image.asset(AppImages.splash, fit: BoxFit.cover),
            ),
            Text(
              'Explore Pro',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 32,
              ),
            ),
            Text(
              'Unlimited Persona access',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            Text(
              'Bookmark Favorite Prompts',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            Text(
              'Save conversations',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Explorer Pro',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                                color: AppColors.primarycolor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                'Save 25%- Get 3 months Free',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: AppColors.primarycolor,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Text(
                          '\$99.9/year',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: AppColors.primarycolor,
                          ),
                        ),
                      ],
                    ),
                    height: Get.height * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: -18, // Shift upward to look like a popup
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Text(
                          'Most Popular',
                          style: TextStyle(
                            color: AppColors.primarycolor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.primarycolor,
    );
  }
}

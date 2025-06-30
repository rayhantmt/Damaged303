import 'package:damaged303/app/common_widgets/button.dart';
import 'package:damaged303/app/common_widgets/hr_select.dart';
import 'package:damaged303/app/modules/log_in/log_in_view.dart';
import 'package:damaged303/app/modules/onboarding/onboarding_controller.dart';
import 'package:damaged303/app/utils/app_colors.dart';
import 'package:damaged303/app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends StatelessWidget {
  final HrRoleController controller = Get.put(HrRoleController());

  final List<Map<String, String>> roles = [
    {'title': 'Talent Acquisition', 'image': AppImages.home1},
    {'title': 'HR Business Partner', 'image': AppImages.home2},
    {'title': 'Compensation', 'image': AppImages.home3},
    {'title': 'Learning & Development', 'image': AppImages.home4},
    {'title': 'Compliance', 'image': AppImages.home5},
    {'title': 'Organizational Development', 'image': AppImages.home6},
    {'title': 'Total Rewards', 'image': AppImages.home7},
    {'title': 'HR Strategy', 'image': AppImages.home8},
  ];

  OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.splash, height: 200, width: 400),
            Text(
              'Customize your experience by\n choosing an AI HR Assistant\n                  Persona!',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23,
                color: Color(0xFF050505),
              ),
            ),

            Expanded(
              child: Container(
                height: 300,
                child: SingleChildScrollView(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: roles.length,
                    itemBuilder: (context, index) {
                      return Obx(
                        () => SelectableTile(
                          title: roles[index]['title']!,
                          imageUrl: roles[index]['image']!,
                          isSelected: controller.selectedIndex.value == index,
                          onTap: () => controller.select(index),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
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
              ],
            ),
            GestureDetector(
              onTap: () {
                Get.to(LogInView());
              },

              child: Button(title: 'Next'),
            ),
          ],
        ),
      ),
    );
  }
}

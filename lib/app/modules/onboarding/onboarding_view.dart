import 'package:damaged303/app/common_widgets/button.dart';
import 'package:damaged303/app/common_widgets/hr_select.dart';
import 'package:damaged303/app/modules/onboarding/onboarding_controller.dart';
import 'package:damaged303/app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends StatelessWidget {
  final HrRoleController controller = Get.put(HrRoleController());

  final List<Map<String, String>> roles = [
    {'title': 'Talent Acquisition', 'image': AppImages.home1},
    {'title': 'HR Business Partner', 'image': AppImages.home1},
    {'title': 'Compensation', 'image': AppImages.home1},
    {'title': 'Learning & Development', 'image': AppImages.home1},
    {'title': 'Compliance', 'image': AppImages.home1},
    {'title': 'Organizational Development', 'image': AppImages.home1},
    {'title': 'Total Rewards', 'image': AppImages.home1},
    {'title': 'HR Strategy', 'image': AppImages.home1},
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
            Container(
              height: 150,
              width: 250,
              child: Image.asset(AppImages.splash),
            ),
            Text(
              'Choose your Starting \nAl Assistant Persona',
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

            Button(title: 'Next'),
          ],
        ),
      ),
    );
  }
}

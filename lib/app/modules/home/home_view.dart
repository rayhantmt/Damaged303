import 'package:damaged303/app/common_widgets/home_stack.dart';
import 'package:damaged303/app/modules/chat/caht_view.dart';
import 'package:damaged303/app/utils/app_colors.dart';
import 'package:damaged303/app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: CircleAvatar(backgroundImage: AssetImage(AppImages.google)),
        ),
        title: const Text(
          'HR Connect',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Color(0xFF1B1E28),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined, size: 30),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Get.height * 0.2,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          AppImages.home_container,
                          fit: BoxFit.cover,
                          color: Color(0xFF000000).withOpacity(0.6),
                          colorBlendMode: BlendMode.darken,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Breaking News',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Company-wide policy update: New flexible guidelines released.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xFF013D3B),
                                ),
                                width: 120,
                                height: 40,

                                child: Center(
                                  child: Text(
                                    'View Feed',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xFFFFFFFF),
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
              ),
              SizedBox(height: 20),
              Text(
                'AI HR Conversation Start',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: AppColors.primarycolor,
                ),
              ),

              GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.79,
                ),
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(CahtView());
                    },
                    child: HomeStack(
                      tittle: 'Talent Acquisition',
                      img: AppImages.home1,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Get.to(CahtView());
                    },
                    child: HomeStack(
                      tittle: 'HR Business\n      Partner',
                      img: AppImages.home2,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Get.to(CahtView());
                    },
                    child: HomeStack(
                      tittle: 'Compensation',
                      img: AppImages.home3,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Get.to(CahtView());
                    },
                    child: HomeStack(
                      tittle: 'Compliance',
                      img: AppImages.home4,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Get.to(CahtView());
                    },
                    child: HomeStack(
                      tittle: '   Learning &\n Development',
                      img: AppImages.home5,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Get.to(CahtView());
                    },
                    child: HomeStack(
                      tittle: 'Organizational\n Development',
                      img: AppImages.home6,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Get.to(CahtView());
                    },
                    child: HomeStack(
                      tittle: 'Total Rewards',
                      img: AppImages.home7,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Get.to(CahtView());
                    },
                    child: HomeStack(
                      tittle: 'HR Strategy',
                      img: AppImages.home8,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

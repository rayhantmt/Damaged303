import 'package:damaged303/app/modules/home/home_view.dart';
import 'package:damaged303/app/modules/main_screen/main_screen_controller.dart';
import 'package:damaged303/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  final BottomNavController navController = Get.put(BottomNavController());

  final List<Widget> screens = [HomeView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => screens[navController.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: navController.currentIndex.value,
          onTap: navController.changeTab,
          selectedItemColor: AppColors.primarycolor,
          unselectedItemColor: Color(0xFF8E8E93),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_rounded),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_3),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

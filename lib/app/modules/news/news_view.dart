import 'package:damaged303/app/modules/home/home_view.dart';
import 'package:damaged303/app/modules/main_screen/main_screen_controller.dart';
import 'package:damaged303/app/modules/main_screen/main_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.put<BottomNavController>(BottomNavController()).changeTab(0);
            Get.back();

            //i want to naviagate to homeview with the bottom navigation bar
            print('news back');
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          'News Feed',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'Search News',
                  ),
                ),
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xFFB0C3C2)),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'Select a category',
                  ),
                ),
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xFFB0C3C2)),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

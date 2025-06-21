import 'package:damaged303/app/common_widgets/button.dart';
import 'package:damaged303/app/common_widgets/profile_helper_text.dart';
import 'package:damaged303/app/utils/app_images.dart';
import 'package:flutter/material.dart';

class PorfileView extends StatelessWidget {
  const PorfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(AppImages.home4),
          ),

          Text(
            'Rayhan Mia',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0xFF1B1E28),
            ),
          ),
          Text(
            'rayhantmt@gmail.com',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF7D848D),
            ),
          ),
          Button(title: 'Subscribe Now'),

          ProfileHelp(
            icon: Icons.notifications_active_outlined,
            text: 'Notification',
          ),
          ProfileHelp(
            icon: Icons.insert_drive_file_outlined,
            text: 'Privacy Policy',
          ),
          ProfileHelp(icon: Icons.lock_outline_sharp, text: 'Forgot Password'),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.logout_outlined, color: Color(0xffD40606)),
                      SizedBox(width: 8),
                      Text(
                        'Log out',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xffD40606),
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_outlined, size: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

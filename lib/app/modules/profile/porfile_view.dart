import 'package:damaged303/app/common_widgets/button.dart';
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

          GestureDetector(
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.notifications_active_outlined),
                  Text("Notification"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Icon(Icons.arrow_forward_ios_outlined)],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

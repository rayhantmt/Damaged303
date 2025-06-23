import 'package:damaged303/app/common_widgets/notification_helper.dart';
import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notification',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Color(0xff1B1E28),
          ),
        ),
      ),
      body: Column(
        children: [
          NotificationHelper(
            name: 'Jacob Davis',
            notification_time: "12:44 PM",
            hint_notification: "Hi there! I'd love to help you with....",
            notification_count: '3',
          ),
        ],
      ),
    );
  }
}

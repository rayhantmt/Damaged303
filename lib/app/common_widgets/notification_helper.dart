import 'package:flutter/material.dart';

class NotificationHelper extends StatelessWidget {
  const NotificationHelper({
    super.key,
    required this.name,
    required this.hint_notification,
    required this.notification_count,
    required this.notification_time,
  });
  final String name;
  final String hint_notification;
  final String notification_count;
  final String notification_time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.center, // Changed from start to center
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(name), Text(notification_time)],
                ),
                SizedBox(height: 4),
                Text(hint_notification),
              ],
            ),
          ),
          SizedBox(width: 8),

          Text(notification_count),
        ],
      ),
    );
  }
}

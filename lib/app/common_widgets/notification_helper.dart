import 'package:flutter/material.dart';

class NotificationHelper extends StatelessWidget {
  const NotificationHelper({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(children: [Text('Jacob Davis'), Text('12:44 PM')]),
            Text('Hi there i would love to help you'),
          ],
        ),
        Text('3'),
      ],
    );
  }
}

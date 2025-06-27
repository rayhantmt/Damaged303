import 'package:damaged303/app/common_widgets/button.dart';
import 'package:damaged303/app/modules/main_screen/main_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordHome extends StatelessWidget {
  const ForgotPasswordHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Forgot Password",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: Color(0xff1B1E28),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'Your password has been successfully reset. click confirm to set a new password',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff7D848D),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(MainScreen());
            },
            child: Button(title: 'Home'),
          ),
        ],
      ),
    );
  }
}

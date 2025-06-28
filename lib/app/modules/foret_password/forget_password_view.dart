import 'package:damaged303/app/common_widgets/button.dart';
import 'package:damaged303/app/common_widgets/text_field.dart';
import 'package:damaged303/app/modules/otp_verification/otp_verification_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            Text(
              'Forgot password',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 26,
                color: Color(0xFF1B1E28),
              ),
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              'Enter your email account to reset\nyour password',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF7D848D),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Your Email',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff050505),
                    ),
                  ),
                ),
              ],
            ),
            CustomTextFormField(
              hintText: 'Please enter your email',
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () => Get.to(OtpVerificationScreen()),
              child: Button(title: 'Forgot Password'),
            ),
          ],
        ),
      ),
    );
  }
}

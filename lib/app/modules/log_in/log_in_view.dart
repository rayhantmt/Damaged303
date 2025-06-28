import 'package:damaged303/app/common_widgets/button.dart';
import 'package:damaged303/app/common_widgets/privacy_policy.dart';
import 'package:damaged303/app/common_widgets/text_field.dart';
import 'package:damaged303/app/modules/changed_subscription/changed_subscription_view.dart';
import 'package:damaged303/app/modules/foret_password/forget_password_view.dart';

import 'package:damaged303/app/modules/log_in/log_in_controller.dart';

import 'package:damaged303/app/modules/sign_up/sign_up_view.dart';
import 'package:damaged303/app/modules/terms_of_use/terms_of_use.dart';

import 'package:damaged303/app/utils/app_colors.dart';
import 'package:damaged303/app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    final passwordcontroller = Get.put(PasswordFieldController());
    final TermsController controller = Get.put(TermsController());
    return Scaffold(
      // appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 90),
            Text(
              'Log in',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 26,
                color: Color(0xFF1B1E28),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Please log in to continue ',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xFF7D848D),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 50),
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
              hintText: 'arraihan815@gmail.com',
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff050505),
                    ),
                  ),
                ),
              ],
            ),
            Obx(
              () => CustomTextFormField(
                hintText: 'Password',
                keyboardType: TextInputType.text,
                obscureText: passwordcontroller.isObscured.value,
                suffixIcon: IconButton(
                  icon: Icon(
                    passwordcontroller.isObscured.value
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                  onPressed: passwordcontroller.toggleObscureText,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.6),
              child: TextButton(
                onPressed: () => Get.to(ForgetPassword()),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.primarycolor,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Checkbox(
                    value: controller.isChecked.value,
                    onChanged: controller.toggleCheckbox,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    activeColor: AppColors.primarycolor,
                  ),
                ),
                Text(
                  'I agree to the ',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(TermsOfUse());
                  },
                  child: Text(
                    'Terms of Use',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: AppColors.primarycolor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
                Text(
                  ' and ',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(PrivacyPolicy());
                  },
                  child: Text(
                    'Privacy Policy.',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: AppColors.primarycolor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),

            GestureDetector(
              onTap: () => Get.offAll(Subscription()),
              child: Button(title: 'Log In'),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF707B81),
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(SignUp());
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.primarycolor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Or connect',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF707B81),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Image.asset(AppImages.apple),
                  onTap: () => print('apple'),
                ),
                SizedBox(width: 5),
                GestureDetector(
                  child: Image.asset(AppImages.google),
                  onTap: () => print('google'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

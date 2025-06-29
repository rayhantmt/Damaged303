import 'package:damaged303/app/common_widgets/button.dart';
import 'package:damaged303/app/common_widgets/text_field.dart';
import 'package:damaged303/app/modules/log_in/log_in_controller.dart';
import 'package:damaged303/app/modules/log_in/log_in_view.dart';
import 'package:damaged303/app/utils/app_colors.dart';
import 'package:damaged303/app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordController extends GetxController {
  var isObscured = true.obs;

  void toggleObscureText() {
    isObscured.value = !isObscured.value;
  }
}

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final PasswordController passwordcontroller = Get.put(PasswordController());
  final TermsController controller = Get.put(TermsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 90),
            Text(
              'Sign up',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 26,
                color: Color(0xFF1B1E28),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Please complete and create account',
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
                hintText: 'Enter your new password',
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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Confirm password',
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
                hintText: 'Re-enter Password',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Password must be 8 character',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF7D848D),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),

            Row(
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
                  onTap: () {},
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
              onTap: () => print('Sign up pressed'),
              child: Button(title: 'Sign Up'),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF707B81),
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(LogInView());
                  },
                  child: Text(
                    'Log In',
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
              'Or connect with',
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
                InkWell(
                  child: Image.asset(AppImages.apple),
                  onTap: () => print('apple'),
                ),
                SizedBox(width: 5),
                InkWell(
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

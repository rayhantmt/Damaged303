import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:async'; // Required for Timer

class OtpController extends GetxController {
  // Observable list for OTP digits, reacts to changes
  final RxList<String> otpDigits = RxList<String>(List.filled(4, ''));

  // Observable for email, can be updated reactively
  final RxString email = "arraiahn815@gmail.com".obs; // Replace with actual email logic

  // Observable for timer seconds
  final RxInt timerSeconds = 86.obs; // Initial timer value (1 minute 26 seconds)

  // Controllers and FocusNodes for TextFields, managed within the GetX controller's lifecycle
  late List<TextEditingController> otpTextControllers;
  late List<FocusNode> otpFocusNodes;

  Timer? _countdownTimer; // Timer instance for managing the countdown

  @override
  void onInit() {
    super.onInit();
    // Initialize TextEditingControllers and FocusNodes
    otpTextControllers = List.generate(4, (_) => TextEditingController());
    otpFocusNodes = List.generate(4, (_) => FocusNode());
    _startTimer(); // Start the timer when the controller is initialized
  }

  @override
  void onClose() {
    // Dispose resources when the controller is closed to prevent memory leaks
    for (var controller in otpTextControllers) {
      controller.dispose();
    }
    for (var focusNode in otpFocusNodes) {
      focusNode.dispose();
    }
    _countdownTimer?.cancel(); // Cancel the timer
    super.onClose();
  }

  // --- Timer Logic ---
  void _startTimer() {
    _countdownTimer?.cancel(); // Cancel any existing timer to prevent duplicates
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timerSeconds.value > 0) {
        timerSeconds.value--; // Decrement the observable timer value
      } else {
        timer.cancel(); // Stop the timer when countdown reaches zero
      }
    });
  }

  // --- OTP Input Handling ---
  void onOtpDigitChanged(String value, int index) {
    otpDigits[index] = value; // Update the observable OTP digit

    // Logic to move focus automatically to the next or previous field
    if (value.length == 1) {
      if (index < otpTextControllers.length - 1) {
        otpFocusNodes[index + 1].requestFocus();
      } else {
        otpFocusNodes[index].unfocus(); // If it's the last digit, unfocus
      }
    } else if (value.isEmpty) {
      if (index > 0) {
        otpFocusNodes[index - 1].requestFocus();
      }
    }
  }

  // --- OTP Verification Logic ---
  void verifyOtp() {
    String otp = otpDigits.join(); // Combine all digits to form the complete OTP
    print("Verifying OTP: $otp");
    // Display a GetX snackbar for feedback
    Get.snackbar(
      "OTP Verification",
      "Verifying OTP: $otp",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );
    // TODO: Implement your actual API call or business logic here
  }

  // --- Resend Code Logic ---
  void resendCode() {
    if (timerSeconds.value == 0) { // Only allow resend if timer has run out
      print("Resending code to ${email.value}");
      timerSeconds.value = 86; // Reset timer to initial value
      _startTimer(); // Restart the timer
      // Clear OTP fields
      for (var controller in otpTextControllers) {
        controller.clear();
      }
      otpDigits.assignAll(List.filled(4, '')); // Reset observable OTP digits
      otpFocusNodes[0].requestFocus(); // Focus on the first OTP field
      Get.snackbar(
        "Resend OTP",
        "New OTP sent to ${email.value}",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blue,
        colorText: Colors.white,
      );
      // TODO: Implement your actual API call to request a new OTP
    } else {
      Get.snackbar(
        "Timer Active",
        "Please wait until the timer runs out to resend the code.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.orange,
        colorText: Colors.white,
      );
    }
  }
}
import 'package:get/get.dart';

class PasswordFieldController extends GetxController {
  RxBool isObscured = true.obs;

  void toggleObscureText() {
    isObscured.value = !isObscured.value;
  }
}

class TermsController extends GetxController {
  var isChecked = false.obs;

  void toggleCheckbox(bool? value) {
    isChecked.value = value ?? false;
  }
}

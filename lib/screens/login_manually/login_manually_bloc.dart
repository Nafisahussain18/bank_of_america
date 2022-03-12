import 'package:bank_of_america/screens/login_manually/login_manually_screen.dart';
import 'package:flutter/material.dart';

class LoginManuallyBloc {
  TextEditingController usernameField = TextEditingController();
  TextEditingController passwordField = TextEditingController();

  bool rememberMyIdChecked = false;
  bool useFingerPrintChecked = false;

  bool validateFields() {
    if (usernameField.text.isEmpty || passwordField.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}

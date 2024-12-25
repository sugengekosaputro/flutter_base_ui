import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CLoginViewModel extends BaseViewModel {
  bool isOtpError = false;
  setOtpErrror(bool value) {
    isOtpError = value;
    notifyListeners();
  }
}

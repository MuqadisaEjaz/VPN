import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class OTPProvider with ChangeNotifier {
  List<String> _otp = List.filled(4, '');
  bool _isVerifying = false;
  int _timer = 45;
  bool _isLoading = false;

  List<String> get otp => _otp;
  bool get isVerifying => _isVerifying;
  int get timer => _timer;
  bool get isButtonEnabled => _otp.every((digit) => digit.isNotEmpty);
  bool get isLoading => _isLoading;

  OTPProvider() {
    _startTimer();
  }
  void setOTP(int index, String value) {
    _otp[index] = value;
    notifyListeners();
  }

  void verifyOTP() async {
    // Add your OTP verification logic here
  }

  void resendCode() {
    _timer = 45;
    _startTimer();
    notifyListeners();
  }

  void _startTimer() {
    Future.delayed(Duration(seconds: 1), () {
      if (_timer > 0) {
        _timer--;
        notifyListeners();
        _startTimer();
      } else {
        notifyListeners();
      }
    });
  }

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  @override
  void dispose() {
    // Clean up resources here
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';

class OTPProvider with ChangeNotifier {
  List<String> _otp = List.filled(4, '');
  bool _isVerifying = false;
  int _timer = 45;
  bool _isLoading = false;
  bool _isError = false;
  Timer? _countdownTimer;
  bool _isDisposed = false;

  List<String> get otp => _otp;
  bool get isVerifying => _isVerifying;
  int get timer => _timer;
  bool get isButtonEnabled => _otp.every((digit) => digit.isNotEmpty);
  bool get isLoading => _isLoading;
  bool get isError => _isError;

  OTPProvider() {
    _startTimer();
  }

  void setOTP(int index, String value) {
    _otp[index] = value;
    _notifyListeners();
  }

  void verifyOTP() async {
    _isLoading = true;
    _notifyListeners();

    if (_otp.join() == "1234") {
      print("3");
      _isError = false;
    } else {
      print("4");
      _isError = true;
    }

    _isLoading = false;
    _notifyListeners();
  }

  void resendCode() {
    _timer = 45;
    _startTimer();
    _notifyListeners();
  }

  void _startTimer() {
    _countdownTimer?.cancel(); // Cancel any existing timer
    _countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timer > 0) {
        _timer--;
        _notifyListeners();
      } else {
        timer.cancel();
        _notifyListeners();
      }
    });
  }

  void setLoading(bool value) {
    _isLoading = value;
    _notifyListeners();
  }

  void _notifyListeners() {
    if (!_isDisposed) {
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _countdownTimer?.cancel(); // Cancel the timer when disposing
    _isDisposed = true; // Mark the provider as disposed
    super.dispose();
  }
}

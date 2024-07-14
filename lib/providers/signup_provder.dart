import 'package:flutter/material.dart';

class SignupProvider extends ChangeNotifier {
  String? _emailError;
  bool _isLoading = false;
  bool _isPasswordVisible = false;

  String? get emailError => _emailError;
  bool get isLoading => _isLoading;
  bool get isPasswordVisible => _isPasswordVisible;

  void setEmailError(String? error) {
    _emailError = error;
    notifyListeners();
  }

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }
}

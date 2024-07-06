import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  bool _isPasswordVisible = false;
  bool _isLoading = false;
  bool _hasError = false;
  bool _showError = false;

  bool get isPasswordVisible => _isPasswordVisible;
  bool get isLoading => _isLoading;
  bool get hasError => _hasError;
  bool get showError => _showError;

  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void setError(bool hasError) {
    _hasError = hasError;
    notifyListeners();
  }

  void clearError() {
    notifyListeners();
  }

  Future<void> verifyLogin() async {
    setLoading(true);
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));
    // Logic to check login credentials
    // For demonstration, let's assume the login fails
    bool loginSuccessful = true;

    if (!loginSuccessful) {
      setError(true);
      _showError = true;
      Future.delayed(Duration(seconds: 10), () {
        _showError = false;
        notifyListeners();
      });
    } else {
      setError(false);
    }

    setLoading(false);
  }

  void setShowError(bool value) {
    _showError = value;
    notifyListeners();
  }
}

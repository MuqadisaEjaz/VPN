import 'package:flutter/material.dart';

class NewPasswordProvider with ChangeNotifier {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  String? _password;
  String? _confirmPassword;

  bool get isPasswordVisible => _isPasswordVisible;
  bool get isConfirmPasswordVisible => _isConfirmPasswordVisible;
  String? get password => _password;
  String? get confirmPassword => _confirmPassword;

  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

  void toggleConfirmPasswordVisibility() {
    _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    notifyListeners();
  }

  void setPassword(String value) {
    _password = value;
    notifyListeners();
  }

  void setConfirmPassword(String value) {
    _confirmPassword = value;
    notifyListeners();
  }

  void resetPassword(BuildContext context) {
    if (_password != null && _password == _confirmPassword) {
      notifyListeners();
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text('Your Password has been changed successfully'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Continue'),
            ),
          ],
        ),
      );
    } else {
      // Handle error
    }
  }
}

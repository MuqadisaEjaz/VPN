import 'package:flutter/material.dart';

class MyAccountProvider with ChangeNotifier {
  String _fullName = 'Syed Wajahat Hassan';
  String _email = 'abc.xyz@gmail.com';
  String _myId = 'AH_282912';
  String _myIp = '116.108.85.23';
  String _type = 'Free';
  String _daysLeft = '7 days left';
  bool _showSuccessMessage = true;

  String get fullName => _fullName;
  String get email => _email;
  String get myId => _myId;
  String get myIp => _myIp;
  String get type => _type;
  String get daysLeft => _daysLeft;
  bool get showSuccessMessage => _showSuccessMessage;

  void updateFullName(String fullName) {
    _fullName = fullName;
    notifyListeners();
  }

  void updateEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void updateMyId(String myId) {
    _myId = myId;
    notifyListeners();
  }

  void updateMyIp(String myIp) {
    _myIp = myIp;
    notifyListeners();
  }

  void updateType(String type) {
    _type = type;
    notifyListeners();
  }

  void updateDaysLeft(String daysLeft) {
    _daysLeft = daysLeft;
    notifyListeners();
  }

  void setShowSuccessMessage(bool value) {
    _showSuccessMessage = value;
    notifyListeners();
  }
}

import 'package:flutter/foundation.dart';

class DashboardProvider with ChangeNotifier {
  bool _isVPNConnected = false;
  bool _isConnecting = false;
  bool _showDisconnectMessage = false;
  bool _showConnectMessage = false;

  bool get isVPNConnected => _isVPNConnected;
  bool get isConnecting => _isConnecting;
  bool get showDisconnectMessage => _showDisconnectMessage;
  bool get showConnectMessage => _showConnectMessage;

  void connectVPN() {
    _isConnecting = true;
    notifyListeners();
    // Simulate connection delay
    Future.delayed(Duration(seconds: 2), () {
      _isConnecting = false;
      _isVPNConnected = true;
      _showConnectMessage = true;
      notifyListeners();
      Future.delayed(Duration(seconds: 10), () {
        _showConnectMessage = false;
        notifyListeners();
      });
    });
  }

  void disconnectVPN() {
    _isVPNConnected = false;
    _showDisconnectMessage = true;
    notifyListeners();
    // Hide message after a few seconds
    Future.delayed(Duration(seconds: 10), () {
      _showDisconnectMessage = false;
      notifyListeners();
    });
  }

  void setShowDisconnectMessage(bool value) {
    _showDisconnectMessage = value;
    notifyListeners();
  }

  void setShowConnectMessage(bool value) {
    _showConnectMessage = value;
    notifyListeners();
  }
}

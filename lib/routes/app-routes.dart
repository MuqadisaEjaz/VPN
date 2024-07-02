import 'package:flutter/material.dart';
import 'package:starxvpn_lightmode/view/Onboarding/onboarding.dart';
import 'package:starxvpn_lightmode/view/Onboarding/onboarding4.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => OnboardingScreenFour());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      // Add more routes as needed
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

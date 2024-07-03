import 'package:flutter/material.dart';
import 'package:starxvpn_lightmode/view/Login/login_screen.dart';
import 'package:starxvpn_lightmode/view/Onboarding/onboarding_screen.dart';
import 'package:starxvpn_lightmode/view/Onboarding/onboarding4.dart';
import 'package:starxvpn_lightmode/view/SignUp/signup_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => OnboardingScreenFour());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignupScreen());

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

import 'package:flutter/material.dart';
import 'package:starxvpn_lightmode/view/FreeLocation/location_screen.dart';
import 'package:starxvpn_lightmode/view/Login/login_screen.dart';
import 'package:starxvpn_lightmode/view/Notifications/notifications_screen.dart';
import 'package:starxvpn_lightmode/view/Onboarding/onboarding_screen.dart';
import 'package:starxvpn_lightmode/view/Onboarding/onboarding4.dart';
import 'package:starxvpn_lightmode/view/ResetPassword/newpassword_screen.dart';
import 'package:starxvpn_lightmode/view/ResetPassword/reset_password.dart';
import 'package:starxvpn_lightmode/view/SignUp/signup_screen.dart';
import 'package:starxvpn_lightmode/view/ResetPassword/otp_screen.dart';
import 'package:starxvpn_lightmode/view/dashboard/dashboard_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case '/':
      //   return MaterialPageRoute(builder: (_) => OnboardingScreenFour());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignupScreen());
      case '/resetpassword':
        return MaterialPageRoute(builder: (_) => ResetPasswordScreen());
      case '/otpverification':
        return MaterialPageRoute(builder: (_) => OtpScreen());
      case '/setnewpassword':
        return MaterialPageRoute(builder: (_) => NewPasswordScreen());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashboardScreen());
      case '/notificationlist':
        return MaterialPageRoute(builder: (_) => NotificationScreen());
      case '/':
        return MaterialPageRoute(builder: (_) => LocationScreen());
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

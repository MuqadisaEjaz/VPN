import 'dart:async';
import 'package:flutter/material.dart';
import 'package:starxvpn_lightmode/view/Onboarding/onboarding_screen.dart';
import 'package:starxvpn_lightmode/view/dashboard/dashboard_screen.dart'; // Replace with your actual screen file

class OnboardingScreenFour extends StatefulWidget {
  @override
  _OnboardingScreenFourState createState() => _OnboardingScreenFourState();
}

class _OnboardingScreenFourState extends State<OnboardingScreenFour> {
  @override
  void initState() {
    super.initState();
    // Delay for 5 seconds
    Timer(Duration(seconds: 5), () {
      // Navigate to next screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) =>
              DashboardScreen(), // Replace with your actual screen
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
            'assets/STARX-VPN-LOGO.png'), // Make sure image path is correct
      ),
    );
  }
}

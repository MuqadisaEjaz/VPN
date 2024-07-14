import 'dart:async';
import 'package:flutter/material.dart';

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
      Navigator.pushReplacementNamed(context, '/dashboard');
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

import 'package:flutter/material.dart';
import 'package:starxvpn_lightmode/widgets/custom_otpscreen.dart';

class Verification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CustomOTPScreen(
      appBarTitle: 'Verification',
      backButtonRoute: '/changeinfo',
      verifyButtonRoute: '/myaccount',
    );
  }
}

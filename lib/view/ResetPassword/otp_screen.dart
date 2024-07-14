import 'package:flutter/material.dart';
import 'package:starxvpn_lightmode/widgets/custom_otpscreen.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomOTPScreen(
      appBarTitle: 'Reset Password',
      backButtonRoute: '/resetpassword',
      verifyButtonRoute: '/setnewpassword',
      bottomLinkRoute: '/login',
    );
  }
}

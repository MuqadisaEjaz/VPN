import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/providers/otp_provider.dart';

class OTPBox extends StatelessWidget {
  final int index;
  final TextEditingController controller;

  OTPBox(this.index, this.controller);

  @override
  Widget build(BuildContext context) {
    return Consumer<OTPProvider>(
      builder: (context, otpProvider, child) {
        Color borderColor = otpProvider.otp[index].isNotEmpty
            ? AppColor.blueColor
            : Colors.grey;

        // Check if there's an error and mark the border color as red if there's an error
        if (otpProvider.isError) {
          borderColor = AppColor.errorColor;
        }

        return Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: TextField(
              controller: controller, // Ensure the controller is set
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              maxLength: 1,
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: '',
              ),
              onChanged: (value) {
                otpProvider.setOTP(index, value);
                if (value.isNotEmpty && index < 3) {
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          ),
        );
      },
    );
  }
}

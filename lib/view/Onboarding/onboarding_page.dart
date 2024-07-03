import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/themes/custome_text_style.dart';

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String text;
  final String swipeImagePath;
  final String buttonImagePath;

  OnboardingPage({
    required this.imagePath,
    required this.text,
    required this.swipeImagePath,
    required this.buttonImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          height: 200.h,
          width: 200.w,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 20.h),
        Container(
          width: 200.w,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: CustomTextStyle.onboardingText.copyWith(
              fontFamily: 'Satoshi',
              fontSize: 22.sp,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Image.asset(
          swipeImagePath,
          height: 28.h,
          width: 42.w,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 30.h),
        Image.asset(
          buttonImagePath,
          height: 50.h,
          width: 50.w,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 40.h),
      ],
    );
  }
}

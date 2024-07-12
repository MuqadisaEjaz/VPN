import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/themes/custome_text_style.dart';

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String text;
  //final String swipeImagePath;

  OnboardingPage({
    required this.imagePath,
    required this.text,
    // required this.swipeImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 250.w,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: CustomTextStyle.onboardingText.copyWith(
              fontFamily: 'Satoshi',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 50.h),
        Image.asset(
          imagePath,
          height: 200.h,
          width: 200.w,
          fit: BoxFit.contain, // Ensure the image fits within the container
        ),
        SizedBox(height: 30.h),
        // Image.asset(
        //   swipeImagePath,
        //   height: 28.h,
        //   width: 42.w,
        //   fit: BoxFit.contain, // Ensure the image fits within the container
        // ),

        SizedBox(height: 30.h),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/widgets/custom_appbar_two.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBarTwo(
          title: 'About us',
          onBackPressed: () {
            Navigator.pushReplacementNamed(context, '/dashboard');
          },
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              top: 0,
              child: Center(
                child: Image.asset(
                  'assets/StarX Vpn Light Mode/Map Illustration/Group.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/STARX-VPN-LOGO.png',
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Version 2.1.0',
                    style: TextStyle(
                      fontFamily: 'SatoshiMedium',
                      fontSize: 20.sp,
                      color: AppColor.blueColor,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10.h,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(40.w),
                child: Text(
                  'www.starxvpn.com  Copyright © 2024 Alisa \n All rights reserved',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 16.sp,
                    color: Color.fromARGB(255, 105, 104, 104),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

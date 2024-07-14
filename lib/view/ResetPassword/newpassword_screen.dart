import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/providers/newpassword_provider.dart';
import 'package:provider/provider.dart';
import 'package:starxvpn_lightmode/widgets/custom_appbar_two.dart';
import 'package:starxvpn_lightmode/widgets/custom_text_fields.dart';
import 'package:starxvpn_lightmode/widgets/my_button.dart';

class NewPasswordScreen extends StatefulWidget {
  @override
  NewPasswordScreenState createState() => NewPasswordScreenState();
}

class NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NewPasswordProvider>(
        create: (_) => NewPasswordProvider(),
        child: SafeArea(
            child: Scaffold(
          appBar: CustomAppBarTwo(
            title: 'Rest Password',
            onBackPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
          body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height -
                    kToolbarHeight -
                    MediaQuery.of(context).padding.top,
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: kToolbarHeight + 5.h,
                      child: Center(
                        child: Image.asset(
                          'assets/StarX Vpn Light Mode/Map Illustration/Group.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 40.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New Password',
                                  style: TextStyle(
                                    fontFamily: 'SatoshiRegular',
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Consumer<NewPasswordProvider>(
                                  builder: (context, provider, child) {
                                    return CustomTextField(
                                      hint: 'example',
                                      hidePassword: !provider.isPasswordVisible,
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          provider.togglePasswordVisibility();
                                        },
                                        child: Image.asset(
                                          'assets/StarX Vpn Light Mode/Eye logo/visibility_off.png',
                                          height: 10.h,
                                          width: 10.w,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'Confirm Password',
                                  style: TextStyle(
                                    fontFamily: 'SatoshiRegular',
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Consumer<NewPasswordProvider>(
                                  builder: (context, provider, child) {
                                    return CustomTextField(
                                      hint: 'example',
                                      hidePassword:
                                          !provider.isConfirmPasswordVisible,
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          provider
                                              .toggleConfirmPasswordVisibility();
                                        },
                                        child: Image.asset(
                                          'assets/StarX Vpn Light Mode/Eye logo/visibility_off.png',
                                          height: 10.h,
                                          width: 10.w,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                SizedBox(height: 10.h),
                                Consumer<NewPasswordProvider>(
                                  builder: (context, provider, child) {
                                    return MyButton(
                                      text: 'Continue',
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) =>
                                                BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: 5, sigmaY: 5),
                                                  child: AlertDialog(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.0),
                                                    ),
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 20.h,
                                                            horizontal: 20.w),
                                                    content: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          'Your Password has been changed successfully',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'SatoshiRegular',
                                                            fontSize: 12.sp,
                                                            color: Colors.black,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        SizedBox(height: 20.h),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border(
                                                              top: BorderSide(
                                                                color:
                                                                    Colors.grey,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                          ),
                                                          child: TextButton(
                                                            onPressed: () =>
                                                                Navigator.of(
                                                                        context)
                                                                    .pop(),
                                                            child: Text(
                                                              'Continue',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'Satoshi',
                                                                fontSize: 16.sp,
                                                                color:
                                                                    Colors.blue,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ));
                                      },
                                      isPrimary: true,
                                      width: double.infinity,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        )));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/providers/otp_provider.dart';
import 'package:provider/provider.dart';
import 'package:starxvpn_lightmode/widgets/custom_text_fields.dart';
import 'package:starxvpn_lightmode/widgets/my_button.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  ResetPasswordScreenState createState() => ResetPasswordScreenState();
}

class ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<OTPProvider>(
        create: (_) => OTPProvider(),
        child: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Image.asset(
                'assets/StarX Vpn Light Mode/Back Button/Back Button.png',
                height: 60.h,
                width: 60.w,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
            title: Text(
              'Reset Password',
              style: TextStyle(fontFamily: 'Satoshi', fontSize: 20),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
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
                                  'We will email you a link to reset your password.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'SatoshiRegular',
                                      fontSize: 16),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'Email',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                CustomTextField(
                                  hint: 'example@example',
                                  controller: null,
                                  suffixIcon: null,
                                ),
                                SizedBox(height: 10.h),
                                MyButton(
                                  text: 'Send Code',
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/otpverification');
                                  },
                                  isPrimary: true,
                                  width: double.infinity,
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

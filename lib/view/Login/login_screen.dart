import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/providers/login_provider.dart';
import 'package:starxvpn_lightmode/widgets/custom_messagebar.dart';
import 'package:starxvpn_lightmode/widgets/custom_text_fields.dart';
import 'package:starxvpn_lightmode/widgets/my_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginProvider>(
      create: (_) => LoginProvider(),
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      AppBar(
                        leading: IconButton(
                          icon: Image.asset(
                            'assets/StarX Vpn Light Mode/Back Button/Back Button.png',
                            height: 60.h,
                            width: 60.w,
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/onboarding');
                          },
                        ),
                        title: Text(
                          'Login into account',
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      ),
                      Expanded(
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
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 45.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                    SizedBox(height: 20.h),
                                    Text(
                                      'Password',
                                      style: TextStyle(
                                        fontFamily: 'Satoshi',
                                        fontSize: 16.sp,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    Consumer<LoginProvider>(
                                      builder: (context, provider, child) {
                                        return CustomTextField(
                                          hint: 'example',
                                          hidePassword:
                                              !provider.isPasswordVisible,
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              provider
                                                  .togglePasswordVisibility();
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
                                    SizedBox(height: 30.h),
                                    Consumer<LoginProvider>(
                                      builder: (context, provider, child) {
                                        return MyButton(
                                          text: 'Sign In',
                                          onTap: () async {
                                            await provider.verifyLogin();
                                            if (!provider.hasError) {
                                              Navigator.pushReplacementNamed(
                                                  context, '/dashboard');
                                            }
                                            print('Sign In pressed');
                                          },
                                          isPrimary: true,
                                          width: double.infinity,
                                          isLoading: provider.isLoading,
                                        );
                                      },
                                    ),
                                    SizedBox(height: 10.h),
                                    Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushReplacementNamed(
                                              context, '/resetpassword');
                                        },
                                        child: Text(
                                          'Forgot Password?',
                                          style: TextStyle(
                                            fontFamily: 'Satoshi',
                                            fontSize: 14.sp,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Consumer<LoginProvider>(
                builder: (context, provider, child) {
                  return provider.showError
                      ? Positioned(
                          top: 22,
                          left: 0,
                          right: 0,
                          child: CustomMessageBar(
                            message:
                                'Oops! Email or password incorrect, try another one.',
                            messageColor: Colors.white,
                            bgColor: AppColor.errorColor,
                            iconPath:
                                'assets/StarX Vpn Light Mode/Error/error.png',
                            iconColor: Colors.white,
                            onClose: () {
                              provider.setShowError(false);
                            },
                          ),
                        )
                      : Container();
                },
              ),
            ],
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.all(40.w),
            child: Text(
              'By using VPN, you agree to the Terms and Privacy Policy',
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontSize: 16.sp,
                color: Color.fromARGB(255, 105, 104, 104),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

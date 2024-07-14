import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:starxvpn_lightmode/widgets/custom_appbar_two.dart';
import 'package:starxvpn_lightmode/widgets/custom_text_fields.dart';
import 'package:starxvpn_lightmode/widgets/my_button.dart';
import 'package:starxvpn_lightmode/providers/signup_provder.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? validateEmail(String? value) {
    final RegExp emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(value!)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SignupProvider>(
      create: (_) => SignupProvider(),
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBarTwo(
            title: 'Sign Up',
            onBackPressed: () {
              Navigator.pushReplacementNamed(context, '/onboarding');
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
                                'Name',
                                style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              CustomTextField(
                                hint: 'Enter your name',
                                controller: nameController,
                                suffixIcon: null,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Consumer<SignupProvider>(
                                builder: (context, provider, child) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomTextField(
                                        hint: 'example@example.com',
                                        controller: emailController,
                                        suffixIcon: null,
                                        errorText: provider.emailError,
                                      ),
                                    ],
                                  );
                                },
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
                              Consumer<SignupProvider>(
                                builder: (context, provider, child) {
                                  return CustomTextField(
                                    hint: 'Enter your password',
                                    controller: passwordController,
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
                              SizedBox(height: 30.h),
                              Consumer<SignupProvider>(
                                builder: (context, provider, child) {
                                  return MyButton(
                                    text: 'Sign Up',
                                    onTap: () async {
                                      final emailError =
                                          validateEmail(emailController.text);
                                      provider.setEmailError(emailError);

                                      if (emailError != null) {
                                        return;
                                      }

                                      provider.setLoading(true);
                                      // Simulate a network call
                                      await Future.delayed(
                                          Duration(seconds: 2));
                                      provider.setLoading(false);
                                      print('Sign Up pressed');
                                    },
                                    isPrimary: true,
                                    width: double.infinity,
                                    isLoading: provider.isLoading,
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
              ),
            ),
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

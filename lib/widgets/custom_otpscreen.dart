import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:starxvpn_lightmode/providers/otp_provider.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/widgets/my_button.dart';
import 'package:starxvpn_lightmode/widgets/custom_otpbox.dart';

class CustomOTPScreen extends StatefulWidget {
  final String appBarTitle;

  final String backButtonRoute;
  final String verifyButtonRoute;
  final String? bottomLinkRoute;

  const CustomOTPScreen(
      {Key? key,
      required this.appBarTitle,
      required this.backButtonRoute,
      required this.verifyButtonRoute,
      this.bottomLinkRoute})
      : super(key: key);

  @override
  _CustomOTPScreenState createState() => _CustomOTPScreenState();
}

class _CustomOTPScreenState extends State<CustomOTPScreen> {
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(4, (index) => TextEditingController());
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

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
                Navigator.pushReplacementNamed(context, widget.backButtonRoute);
              },
            ),
            title: Text(
              widget.appBarTitle,
              style: TextStyle(fontFamily: 'Satoshi', fontSize: 20),
            ),
            centerTitle: true,
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
                                'Enter the verification code we send you on: abc***@gmail.com',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'SatoshiRegular', fontSize: 14),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                    4,
                                    (index) =>
                                        OTPBox(index, _controllers[index])),
                              ),
                              SizedBox(height: 10.h),
                              Consumer<OTPProvider>(
                                builder: (context, provider, child) {
                                  return provider.isError
                                      ? Center(
                                          child: Text(
                                            'Code Invalid',
                                            style: TextStyle(
                                              color: AppColor.errorColor,
                                              fontSize: 12.sp,
                                              fontFamily: 'Satoshi',
                                            ),
                                          ),
                                        )
                                      : Container();
                                },
                              ),
                              SizedBox(height: 160.h),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Didn't receive code?",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'SatoshiRegular'),
                                  ),
                                  SizedBox(height: 20.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/StarX Vpn Light Mode/Clock Circle/Clock Circle.png',
                                        height: 20,
                                        width: 20,
                                      ),
                                      SizedBox(width: 5.w),
                                      Consumer<OTPProvider>(
                                        builder: (context, otpProvider, _) =>
                                            Text(
                                          '00:${otpProvider.timer.toString().padLeft(2, '0')}',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'Satoshi'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  GestureDetector(
                                    onTap: () {
                                      print(
                                          "hello"); // This function will execute when onTap is triggered
                                    },
                                    child: Text(
                                      'Resend Code',
                                      style: TextStyle(
                                          fontFamily: 'SatoshiBold',
                                          fontSize: 16,
                                          color: AppColor.blueColor),
                                    ),
                                  ),
                                ],
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Consumer<OTPProvider>(
                  builder: (context, provider, child) {
                    return MyButton(
                      text: "Verify OTP",
                      onTap: provider.isButtonEnabled
                          ? () async {
                              provider.verifyOTP();
                              if (!provider.isError) {
                                print("object2");
                                Navigator.pushReplacementNamed(
                                    context, widget.verifyButtonRoute);
                              } else {
                                print("object");
                              }
                            }
                          : null,
                      isPrimary: true,
                      isLoading: provider.isLoading,
                      width: double.infinity,
                      isEnabled: provider.isButtonEnabled,
                    );
                  },
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: widget.bottomLinkRoute != null
                      ? () {
                          Navigator.pushReplacementNamed(
                              context, widget.bottomLinkRoute!);
                        }
                      : null,
                  child: widget.bottomLinkRoute != null
                      ? RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'SatoshiRegular',
                              fontSize: 16,
                              color: AppColor.blueColor,
                            ),
                            children: [
                              TextSpan(
                                text: 'Back to',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Satoshi',
                                ),
                              ),
                              TextSpan(
                                text: ' Sign In',
                                style: TextStyle(
                                  color: AppColor.blueColor,
                                  fontFamily: 'SatoshiBold',
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

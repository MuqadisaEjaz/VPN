// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:starxvpn_lightmode/providers/otp_provider.dart';
// import 'package:starxvpn_lightmode/const/app_colors.dart';
// import 'package:provider/provider.dart';
// import 'package:starxvpn_lightmode/widgets/my_button.dart';
// import 'package:starxvpn_lightmode/widgets/custom_otpbox.dart';

// class OtpScreen extends StatefulWidget {
//   @override
//   OtpScreenState createState() => OtpScreenState();
// }

// class OtpScreenState extends State<OtpScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<OTPProvider>(
//         create: (_) => OTPProvider(),
//         child: SafeArea(
//             child: Scaffold(
//           appBar: AppBar(
//             leading: IconButton(
//               icon: Image.asset(
//                 'assets/StarX Vpn Light Mode/Back Button/Back Button.png',
//                 height: 60.h,
//                 width: 60.w,
//               ),
//               onPressed: () {
//                 Navigator.pushReplacementNamed(context, '/resetpassword');
//               },
//             ),
//             title: Text(
//               'Reset Password',
//               style: TextStyle(fontFamily: 'Satoshi', fontSize: 20),
//             ),
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//           ),
//           body: SingleChildScrollView(
//             child: Container(
//                 height: MediaQuery.of(context).size.height -
//                     kToolbarHeight -
//                     MediaQuery.of(context).padding.top,
//                 child: Stack(
//                   children: [
//                     Positioned.fill(
//                       top: kToolbarHeight + 5.h,
//                       child: Center(
//                         child: Image.asset(
//                           'assets/StarX Vpn Light Mode/Map Illustration/Group.png',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Positioned.fill(
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 20.w, vertical: 40.h),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Enter the verification code we send you on: abc***@gmail.com',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontFamily: 'SatoshiRegular',
//                                       fontSize: 14),
//                                 ),
//                                 SizedBox(height: 10.h),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: List.generate(
//                                       4, (index) => OTPBox(index)),
//                                 ),
//                                 SizedBox(height: 160.h),
//                                 Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         "Didn't receive code?",
//                                         style: TextStyle(
//                                             fontSize: 15,
//                                             fontFamily: 'SatoshiRegular'),
//                                       ),

//                                       SizedBox(
//                                           height:
//                                               20.h), // Adjust spacing as needed
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         children: [
//                                           Image.asset(
//                                             'assets/StarX Vpn Light Mode/Clock Circle/Clock Circle.png',
//                                             height: 20,
//                                             width: 20,
//                                           ),
//                                           SizedBox(width: 5.w),
//                                           Consumer<OTPProvider>(
//                                             builder:
//                                                 (context, otpProvider, _) =>
//                                                     Text(
//                                               '00:${otpProvider.timer.toString().padLeft(2, '0')}',
//                                               style: TextStyle(
//                                                   fontSize: 16,
//                                                   fontFamily: 'Satoshi'),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                       SizedBox(
//                                           height:
//                                               10.h), // Adjust spacing as needed
//                                       GestureDetector(
//                                         onTap: () {
//                                           print(
//                                               "hello"); // This function will execute when onTap is triggered
//                                         },
//                                         child: Text(
//                                           'Resend Code',
//                                           style: TextStyle(
//                                               fontFamily: 'SatoshiBold',
//                                               fontSize: 16,
//                                               color: AppColor.blueColor),
//                                         ),
//                                       ),
//                                     ]),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 )),
//           ),
//           bottomNavigationBar: Container(
//             padding: EdgeInsets.all(40.w),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Consumer<OTPProvider>(
//                   builder: (context, provider, child) {
//                     return MyButton(
//                       text: "Verify OTP",
//                       onTap: provider.isButtonEnabled
//                           ? () async {
//                               provider.setLoading(true);
//                               // Simulate a network call
//                               await Future.delayed(Duration(seconds: 2));
//                               provider.setLoading(false);
//                               Navigator.pushReplacementNamed(
//                                   context, '/setnewpassword');
//                             }
//                           : null,
//                       isPrimary: true,
//                       isLoading: provider.isLoading,
//                       width: double.infinity,
//                       isEnabled: provider.isButtonEnabled,
//                     );
//                   },
//                 ),
//                 SizedBox(height: 20.h), // Adjust spacing as needed
//                 GestureDetector(
//                   onTap: () {
//                     // Navigate back to Sign In screen
//                     Navigator.pushReplacementNamed(context, '/login');
//                   },
//                   child: RichText(
//                     text: TextSpan(
//                       style: TextStyle(
//                         fontFamily: 'SatoshiRegular',
//                         fontSize: 16,
//                         color: AppColor.blueColor,
//                       ),
//                       children: [
//                         TextSpan(
//                           text: 'Back to ',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: 'Satoshi',
//                           ),
//                         ),
//                         TextSpan(
//                           text: 'Sign In',
//                           style: TextStyle(
//                             color: AppColor.blueColor,
//                             fontFamily: 'SatoshiBold',
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )));
//   }
// }

// // class _OTPBox extends StatelessWidget {
// //   final int index;

// //   _OTPBox(this.index);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Consumer<OTPProvider>(
// //       builder: (context, otpProvider, child) {
// //         return Container(
// //           width: 75,
// //           height: 75,
// //           decoration: BoxDecoration(
// //             border: Border.all(
// //               color: otpProvider.otp[index].isNotEmpty
// //                   ? AppColor.blueColor
// //                   : Colors.grey,
// //             ),
// //             borderRadius: BorderRadius.circular(8),
// //           ),
// //           child: Center(
// //             child: TextField(
// //               textAlign: TextAlign.center,
// //               keyboardType: TextInputType.number,
// //               maxLength: 1,
// //               decoration: InputDecoration(
// //                 border: InputBorder.none,
// //                 counterText: '',
// //               ),
// //               onChanged: (value) {
// //                 if (value.isNotEmpty) {
// //                   otpProvider.setOTP(index, value);
// //                   if (index < 3) {
// //                     FocusScope.of(context).nextFocus();
// //                   }
// //                 } else {
// //                   otpProvider.setOTP(index, value); // Update OTP provider
// //                 }
// //               },
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }

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

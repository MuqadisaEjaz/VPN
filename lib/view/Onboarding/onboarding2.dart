import 'package:starxvpn_lightmode/providers/onboarding_provder.dart';
import 'package:starxvpn_lightmode/themes/custome_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:starxvpn_lightmode/view/Onboarding/onboarding3.dart';
import 'package:starxvpn_lightmode/widgets/my_button.dart';

class OnboardingScreenTwo extends StatefulWidget {
  OnboardingScreenTwo({Key? key}) : super(key: key);

  @override
  OnboardingScreenTwoState createState() => OnboardingScreenTwoState();

  static Widget withProvider() {
    return ChangeNotifierProvider<OnboardingProvider>(
      create: (_) => OnboardingProvider(),
      child: OnboardingScreenTwo(),
    );
  }
}

class OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
  @override
  void initState() {
    super.initState();
    // Add any initialization logic here
  }

  @override
  Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       'assets/StarX Vpn Light Mode/Illustration/Illustration 3.png',
//                       height: 200.h, // Responsive height
//                       width: 200.w, // Responsive width
//                       fit: BoxFit.cover,
//                     ),
//                     SizedBox(height: 20.h),
//                     Container(
//                       width: 200.w, // Same width as the image
//                       child: Text(
//                         'Enjoy unrestricted access worldwide-from anywhere.',
//                         textAlign: TextAlign.center,
//                         style: CustomTextStyle.onboardingText.copyWith(
//                           fontSize: 18.sp, // Responsive font size
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20.h),
//                     Image.asset(
//                       'assets/StarX Vpn Light Mode/Swipe/Swipe 3.png',
//                       height: 20.h,
//                       width: 40.w,
//                       fit: BoxFit.cover,
//                     ),
//                     SizedBox(height: 30.h), // Responsive height
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.of(context).pushReplacement(
//                           MaterialPageRoute(
//                             builder: (BuildContext context) =>
//                                 OnboardingScreenThree(),
//                           ),
//                         );
//                       },
//                       child: Image.asset(
//                         'assets/StarX Vpn Light Mode/Swipe/Button 3.png',
//                         height: 50.h,
//                         width: 50.w,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     SizedBox(height: 20.h),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               padding:
//                   EdgeInsets.symmetric(horizontal: 16.w), // Padding for buttons
//               width: double.infinity,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   MyButton(
//                     text: 'Start Free Trial',
//                     onTap: () {
//                       // Handle button press
//                       print('Button 1 pressed');
//                     },
//                     isPrimary: true,
//                     width: double.infinity, // Full width button
//                   ),
//                   SizedBox(height: 10.h),
//                   MyButton(
//                     text: 'Sign In',
//                     onTap: () {
//                       // Handle button press
//                       print('pressed');
//                     },
//                     isPrimary: false,
//                     width: double.infinity, // Full width button
//                   ),
//                   SizedBox(height: 10.h),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Background image positioned behind the main content
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/StarX Vpn Light Mode/Map Illustration/Group.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/StarX Vpn Light Mode/Illustration/Illustration 3.png',
                          height: 200.h, // Responsive height
                          width: 200.w, // Responsive width
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          width: 200.w, // Same width as the image
                          child: Text(
                            'Enjoy unrestricted access worldwide-from anywhere.',
                            textAlign: TextAlign.center,
                            style: CustomTextStyle.onboardingText.copyWith(
                              fontFamily: 'Satoshi',
                              fontSize: 22.sp, // Responsive font size
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Image.asset(
                          'assets/StarX Vpn Light Mode/Swipe/Swipe 3.png',
                          height: 28.h,
                          width: 42.w,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 30.h), // Responsive height
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    OnboardingScreenThree(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/StarX Vpn Light Mode/Swipe/Button 3.png',
                            height: 50.h,
                            width: 50.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      MyButton(
                        text: 'Start Free Trial',
                        onTap: () {
                          print('Button 1 pressed');
                        },
                        isPrimary: true,
                        width: double.infinity,
                      ),
                      SizedBox(height: 10.h),
                      MyButton(
                        text: 'Sign In',
                        onTap: () {
                          print('pressed');
                        },
                        isPrimary: false,
                        width: double.infinity,
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

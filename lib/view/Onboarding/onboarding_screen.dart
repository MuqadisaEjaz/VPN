// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';
// import 'package:starxvpn_lightmode/const/app_colors.dart';
// import 'package:starxvpn_lightmode/providers/onboarding_provder.dart';
// import 'package:starxvpn_lightmode/view/Onboarding/onboarding_page.dart';
// import 'package:starxvpn_lightmode/widgets/my_button.dart';

// class OnboardingScreen extends StatefulWidget {
//   OnboardingScreen({Key? key}) : super(key: key);

//   @override
//   OnboardingScreenState createState() => OnboardingScreenState();

//   static Widget withProvider() {
//     return ChangeNotifierProvider<OnboardingProvider>(
//       create: (_) => OnboardingProvider(),
//       child: OnboardingScreen(),
//     );
//   }
// }

// class OnboardingScreenState extends State<OnboardingScreen> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _startAutoSlide();
//   }

//   void _startAutoSlide() {
//     _timer = Timer.periodic(Duration(seconds: 2), (timer) {
//       if (_currentPage < 3) {
//         _currentPage++;
//       } else {
//         _currentPage = 0;
//       }
//       _pageController.animateToPage(
//         _currentPage,
//         duration: Duration(milliseconds: 300),
//         curve: Curves.easeIn,
//       );
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             icon: Image.asset(
//               'assets/StarX Vpn Light Mode/Close icon/close.png',
//               height: 10.h,
//               width: 10.w,
//             ),
//             onPressed: () {
//               Navigator.pushReplacementNamed(context, '/dashboard');
//             },
//           ),
//           backgroundColor: Colors.white,
//           elevation: 0,
//         ),
//         body: Stack(
//           children: [
//             Positioned(
//               top: 0,
//               left: 0,
//               right: 0,
//               bottom: 0,
//               child: Image.asset(
//                 'assets/StarX Vpn Light Mode/Map Illustration/Group.png',
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: PageView(
//                     controller: _pageController,
//                     onPageChanged: (index) {
//                       setState(() {
//                         _currentPage = index;
//                       });
//                     },
//                     children: [
//                       OnboardingPage(
//                         imagePath:
//                             'assets/StarX Vpn Light Mode/Illustration/Illustration 1.png',
//                         text:
//                             'Keep your online activity private, even in public.',
//                         // swipeImagePath:
//                         //     'assets/StarX Vpn Light Mode/Swipe/Swipe.png',
//                       ),
//                       OnboardingPage(
//                         imagePath:
//                             'assets/StarX Vpn Light Mode/Illustration/Illustration 2.png',
//                         text: 'Mask your IP address and avoid being tracked.',
//                         // swipeImagePath:
//                         //     'assets/StarX Vpn Light Mode/Swipe/Swipe 2.png',
//                       ),
//                       OnboardingPage(
//                         imagePath:
//                             'assets/StarX Vpn Light Mode/Illustration/Illustration 3.png',
//                         text:
//                             'Enjoy unrestricted access worldwide-from anywhere.',
//                         // swipeImagePath:
//                         //     'assets/StarX Vpn Light Mode/Swipe/Swipe 3.png',
//                       ),
//                       OnboardingPage(
//                         imagePath:
//                             'assets/StarX Vpn Light Mode/Illustration/Illustration 4.png',
//                         text:
//                             'Start protecting yourself with a 7-day free trial.',
//                         //   swipeImagePath:
//                         //       'assets/StarX Vpn Light Mode/Swipe/Swipe 4.png',
//                         // ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 16.w),
//                   width: double.infinity,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       SizedBox(height: 20.h),
//                       MyButton(
//                         text: 'Sign In',
//                         onTap: () {
//                           Navigator.pushReplacementNamed(context, '/login');
//                         },
//                         isPrimary: true,
//                         width: double.infinity,
//                       ),
//                       SizedBox(height: 10.h),
//                       Column(
//                         children: [
//                           Row(
//                             children: [
//                               Expanded(child: Divider()),
//                               Padding(
//                                 padding: EdgeInsets.symmetric(horizontal: 10.w),
//                                 child: Text(
//                                   'or sign up with',
//                                   style: TextStyle(
//                                     fontFamily: 'Satoshi',
//                                     fontSize: 14.sp,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                               ),
//                               Expanded(child: Divider()),
//                             ],
//                           ),
//                           SizedBox(height: 10.h),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                       color: Colors.grey, width: 2.0),
//                                 ),
//                                 child: CircleAvatar(
//                                   radius: 20.h,
//                                   backgroundColor: Colors.white,
//                                   child: Image.asset(
//                                     'assets/StarX Vpn Light Mode/Apple, Facebook, Google logo/Apple.png',
//                                     height: 30.h,
//                                     width: 30.w,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 20.w),
//                               Container(
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                       color: Colors.grey, width: 2.0),
//                                 ),
//                                 child: CircleAvatar(
//                                   radius: 20.h,
//                                   backgroundColor: Colors.white,
//                                   child: Image.asset(
//                                     'assets/StarX Vpn Light Mode/Apple, Facebook, Google logo/Facebook.png',
//                                     height: 30.h,
//                                     width: 30.w,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 20.w),
//                               Container(
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                       color: Colors.grey, width: 2.0),
//                                 ),
//                                 child: CircleAvatar(
//                                   radius: 20.h,
//                                   backgroundColor: Colors.white,
//                                   child: Image.asset(
//                                     'assets/StarX Vpn Light Mode/Apple, Facebook, Google logo/Google.png',
//                                     height: 30.h,
//                                     width: 30.w,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 20.h),
//                           Text(
//                             "Haven't signed up yet?",
//                             style: TextStyle(
//                               fontFamily: 'Satoshi',
//                               fontSize: 14.sp,
//                               color: Colors.black,
//                             ),
//                           ),
//                           SizedBox(height: 5.h),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.pushReplacementNamed(
//                                   context, '/signup');
//                             },
//                             child: Text(
//                               'Create an account',
//                               style: TextStyle(
//                                 fontFamily: 'Satoshi',
//                                 fontSize: 14.sp,
//                                 color: AppColor.blueColor,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 20.h),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/providers/onboarding_provder.dart';
import 'package:starxvpn_lightmode/view/Onboarding/onboarding_page.dart';
import 'package:starxvpn_lightmode/widgets/my_button.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  OnboardingScreenState createState() => OnboardingScreenState();

  static Widget withProvider() {
    return ChangeNotifierProvider<OnboardingProvider>(
      create: (_) => OnboardingProvider(),
      child: OnboardingScreen(),
    );
  }
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          width: 8.w,
          height: 8.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? Colors.blue : Colors.grey,
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Image.asset(
              'assets/StarX Vpn Light Mode/Close icon/close.png',
              height: 10.h,
              width: 10.w,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/dashboard');
            },
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/StarX Vpn Light Mode/Map Illustration/Group.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    children: [
                      OnboardingPage(
                        imagePath:
                            'assets/StarX Vpn Light Mode/Illustration/Illustration 1.png',
                        text:
                            'Keep your online activity private, even in public.',
                      ),
                      OnboardingPage(
                        imagePath:
                            'assets/StarX Vpn Light Mode/Illustration/Illustration 2.png',
                        text: 'Mask your IP address and avoid being tracked.',
                      ),
                      OnboardingPage(
                        imagePath:
                            'assets/StarX Vpn Light Mode/Illustration/Illustration 3.png',
                        text:
                            'Enjoy unrestricted access worldwide-from anywhere.',
                      ),
                      OnboardingPage(
                        imagePath:
                            'assets/StarX Vpn Light Mode/Illustration/Illustration 4.png',
                        text:
                            'Start protecting yourself with a 7-day free trial.',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                _buildPageIndicator(), // Indicator dots
                SizedBox(height: 20.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 20.h),
                      MyButton(
                        text: 'Sign In',
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        isPrimary: true,
                        width: double.infinity,
                      ),
                      SizedBox(height: 10.h),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: Divider()),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Text(
                                  'or sign up with',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Expanded(child: Divider()),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.grey, width: 2.0),
                                ),
                                child: CircleAvatar(
                                  radius: 20.h,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    'assets/StarX Vpn Light Mode/Apple, Facebook, Google logo/Apple.png',
                                    height: 30.h,
                                    width: 30.w,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.grey, width: 2.0),
                                ),
                                child: CircleAvatar(
                                  radius: 20.h,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    'assets/StarX Vpn Light Mode/Apple, Facebook, Google logo/Facebook.png',
                                    height: 30.h,
                                    width: 30.w,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.grey, width: 2.0),
                                ),
                                child: CircleAvatar(
                                  radius: 20.h,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    'assets/StarX Vpn Light Mode/Apple, Facebook, Google logo/Google.png',
                                    height: 30.h,
                                    width: 30.w,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "Haven't signed up yet?",
                            style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 14.sp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, '/signup');
                            },
                            child: Text(
                              'Create an account',
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 14.sp,
                                color: AppColor.blueColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
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

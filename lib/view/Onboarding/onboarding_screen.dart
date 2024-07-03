import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
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
                        swipeImagePath:
                            'assets/StarX Vpn Light Mode/Swipe/Swipe.png',
                        buttonImagePath:
                            'assets/StarX Vpn Light Mode/Swipe/Button 1.png',
                      ),
                      OnboardingPage(
                        imagePath:
                            'assets/StarX Vpn Light Mode/Illustration/Illustration 2.png',
                        text: 'Mask your IP address and avoid being tracked.',
                        swipeImagePath:
                            'assets/StarX Vpn Light Mode/Swipe/Swipe 2.png',
                        buttonImagePath:
                            'assets/StarX Vpn Light Mode/Swipe/Button 2.png',
                      ),
                      OnboardingPage(
                        imagePath:
                            'assets/StarX Vpn Light Mode/Illustration/Illustration 3.png',
                        text:
                            'Enjoy unrestricted access worldwide-from anywhere.',
                        swipeImagePath:
                            'assets/StarX Vpn Light Mode/Swipe/Swipe 3.png',
                        buttonImagePath:
                            'assets/StarX Vpn Light Mode/Swipe/Button 3.png',
                      ),
                      OnboardingPage(
                        imagePath:
                            'assets/StarX Vpn Light Mode/Illustration/Illustration 4.png',
                        text:
                            'Start protecting yourself with a 7-day free trial',
                        swipeImagePath:
                            'assets/StarX Vpn Light Mode/Swipe/Swipe 4.png',
                        buttonImagePath:
                            'assets/StarX Vpn Light Mode/Swipe/Button 4.png',
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 20.h),
                      MyButton(
                        text: 'Start Free Trial',
                        onTap: () {
                          print('Start Free Trial pressed');
                        },
                        isPrimary: true,
                        width: double.infinity,
                      ),
                      SizedBox(height: 10.h),
                      MyButton(
                        text: 'Sign In',
                        onTap: () {
                          print('Sign In pressed');
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

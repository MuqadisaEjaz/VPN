import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/view/Languages/languages_screen.dart';
import 'package:starxvpn_lightmode/view/Onboarding/onboarding_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String userName;

  const CustomAppBar({Key? key, required this.userName}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Image.asset(
          'assets/StarX Vpn Light Mode/Drawer Button/Drawer button.png', // Replace with your sidebar icon asset
          height: 70.h,
          width: 70.w,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      actions: [
        IconButton(
          icon: Image.asset(
            'assets/StarX Vpn Light Mode/Notification/notification-03.png', // Replace with your notification icon asset
            height: 20.h,
            width: 20.w,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/notificationlist');
          },
        ),
        IconButton(
          icon: Image.asset(
            'assets/StarX Vpn Light Mode/Globe Vector/Globe vector.png', // Replace with your settings icon asset
            height: 60.h,
            width: 40.w,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.85,
                  child: LanguagesScreen(),
                );
              },
            );
          },
        ),
      ],
      title: GestureDetector(
        onTap: () {
          if (userName == 'Sign Up/Sign In') {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.95,
                  child: OnboardingScreen.withProvider(),
                );
              },
            );
            //  Navigator.pushReplacementNamed(context, '/onboarding');
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (userName != 'Sign Up/Sign In')
              Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Satoshi',
                  fontSize: 16.sp,
                ),
              ),
            Text(
              userName,
              style: TextStyle(
                fontFamily: userName == 'Sign Up/Sign In'
                    ? 'SatoshiRegular'
                    : 'Satoshi',
                fontSize: 16.sp,
                fontWeight: userName == 'Sign Up/Sign In'
                    ? FontWeight.normal
                    : FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}

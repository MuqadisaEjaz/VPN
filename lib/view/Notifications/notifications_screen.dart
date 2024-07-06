import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/widgets/custom_notificationbox.dart';

class NotificationScreen extends StatelessWidget {
  final List<Map<String, String>> recentNotifications = [
    {
      'profileImage': 'assets/StarX Vpn Light Mode/Profile/Ellipse 2823.png',
      'message':
          'Lorem ipsum dolor sit amet consectetur Etiam eque proin sapien facilisi sit.',
      'time': '3 hours ago'
    },
    {
      'profileImage': 'assets/StarX Vpn Light Mode/Profile/Ellipse 2823.png',
      'message':
          'Lorem ipsum dolor sit amet consectetur Etiam eque proin sapien facilisi sit.',
      'time': '4 hours ago'
    },
    {
      'profileImage': 'assets/StarX Vpn Light Mode/Profile/Ellipse 2823.png',
      'message':
          'Lorem ipsum dolor sit amet consectetur Etiam eque proin sapien facilisi sit.',
      'time': '7 hours ago'
    },
    {
      'profileImage': 'assets/StarX Vpn Light Mode/Profile/Ellipse 2823.png',
      'message':
          'Lorem ipsum dolor sit amet consectetur Etiam eque proin sapien facilisi sit.',
      'time': '9 hours ago'
    },
  ];

  final List<Map<String, String>> yesterdayNotifications = [
    {
      'profileImage': 'assets/StarX Vpn Light Mode/Profile/Ellipse 2823.png',
      'message':
          'Lorem ipsum dolor sit amet consectetur Etiam eque proin sapien facilisi sit.',
      'time': '3 hours ago'
    },
    {
      'profileImage': 'assets/StarX Vpn Light Mode/Profile/Ellipse 2823.png',
      'message':
          'Lorem ipsum dolor sit amet consectetur Etiam eque proin sapien facilisi sit.',
      'time': '4 hours ago'
    },
    {
      'profileImage': 'assets/StarX Vpn Light Mode/Profile/Ellipse 2823.png',
      'message':
          'Lorem ipsum dolor sit amet consectetur Etiam eque proin sapien facilisi sit.',
      'time': '7 hours ago'
    },
    {
      'profileImage': 'assets/StarX Vpn Light Mode/Profile/Ellipse 2823.png',
      'message':
          'Lorem ipsum dolor sit amet consectetur Etiam eque proin sapien facilisi sit.',
      'time': '9 hours ago'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
            fontFamily: 'SatoshiMedium',
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            'assets/StarX Vpn Light Mode/Back Button/Back Button.png',
            height: 40.h,
            width: 40.w,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/dashboard');
          },
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Recent',
              style: TextStyle(
                fontFamily: 'SatoshiMedium',
                fontSize: 16,
              ),
            ),
          ),
          ...recentNotifications.map((notification) {
            return CustomNotificationBox(
              profileImage: notification['profileImage']!,
              message: notification['message']!,
              time: notification['time']!,
            );
          }).toList(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Yesterday',
              style: TextStyle(
                fontFamily: 'SatoshiMedium',
                fontSize: 16,
              ),
            ),
          ),
          ...yesterdayNotifications.map((notification) {
            return CustomNotificationBox(
              profileImage: notification['profileImage']!,
              message: notification['message']!,
              time: notification['time']!,
            );
          }).toList(),
        ],
      ),
    );
  }
}

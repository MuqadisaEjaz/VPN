import 'package:flutter/material.dart';
import 'package:starxvpn_lightmode/Models/notification_model.dart';
import 'package:starxvpn_lightmode/widgets/custom_appbar_two.dart';
import 'package:starxvpn_lightmode/widgets/custom_notificationbox.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isNotificationListEmpty =
        recentNotifications.isEmpty && yesterdayNotifications.isEmpty;

    return Scaffold(
      appBar: CustomAppBarTwo(
        title: 'Notifications',
        onBackPressed: () {
          Navigator.pushReplacementNamed(context, '/dashboard');
        },
      ),
      body: isNotificationListEmpty
          ? Center(
              child: Text(
                'You\'re all caught up',
                style: TextStyle(
                  fontFamily: 'SatoshiMedium',
                  fontSize: 18,
                ),
              ),
            )
          : ListView(
              children: [
                if (recentNotifications.isNotEmpty) ...[
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
                ],
                if (yesterdayNotifications.isNotEmpty) ...[
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
              ],
            ),
    );
  }
}

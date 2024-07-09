import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            // Handle settings action
          },
        ),
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
              fontFamily: 'Satoshi',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold, // Medium weight
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}

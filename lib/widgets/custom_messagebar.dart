import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';

class CustomMessageBar extends StatelessWidget {
  final String message;
  final Color messageColor;
  final String iconPath;
  final Color iconColor;
  final Color bgColor;
  final VoidCallback onClose;

  CustomMessageBar({
    required this.message,
    this.messageColor = Colors.black,
    required this.iconPath,
    required this.iconColor,
    required this.onClose,
    this.bgColor = AppColor.successColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8.w),
        ),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              height: 24.h,
              width: 24.w,
              color: iconColor,
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Text(
                message,
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 12.sp,
                  color: messageColor,
                ),
              ),
            ),
            GestureDetector(
              onTap: onClose,
              child: Image.asset(
                'assets/StarX Vpn Light Mode/Close icon/Icon.png',
                height: 18.h,
                width: 18.w,
                color: messageColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

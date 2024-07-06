import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';

class CustomDialog extends StatelessWidget {
  final String? title;
  final String content;
  final String negativeButtonText;
  final String positiveButtonText;
  final VoidCallback onNegativeTap;
  final VoidCallback onPositiveTap;
  final Color negativeButtonColor;
  final Color positiveButtonColor;

  CustomDialog({
    this.title,
    required this.content,
    required this.negativeButtonText,
    required this.positiveButtonText,
    required this.onNegativeTap,
    required this.onPositiveTap,
    this.negativeButtonColor = Colors.blue,
    this.positiveButtonColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        backgroundColor: AppColor.alertboxColor,
        title: title != null
            ? Center(
                child: Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'SatoshiBold',
                    fontSize: 16.sp,
                  ),
                ),
              )
            : null,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              content,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontSize: 12.sp,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actionsPadding: EdgeInsets.zero,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.grey, width: 1),
                    ),
                  ),
                  child: TextButton(
                      onPressed: onNegativeTap,
                      child: Text(
                        negativeButtonText,
                        style: TextStyle(
                          color: negativeButtonColor,
                          fontFamily: 'SatoshiRegular',
                          fontSize: 16.sp,
                        ),
                      )),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.grey, width: 1),
                      left: BorderSide(color: Colors.grey, width: 1),
                    ),
                  ),
                  child: TextButton(
                      onPressed: onPositiveTap,
                      child: Text(
                        positiveButtonText,
                        style: TextStyle(
                          color: positiveButtonColor,
                          fontFamily: 'SatoshiRegular',
                          fontSize: 16.sp,
                        ),
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

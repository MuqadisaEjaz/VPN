// import 'package:starxvpn_lightmode/const/app_colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class MyButton extends StatelessWidget {
//   final String text;
//   final double? textSize;
//   final double? height;
//   final void Function()? onTap;
//   final bool isPrimary; // New property to determine button style
//   final double width; // Added width property

//   const MyButton({
//     super.key,
//     required this.text,
//     this.onTap,
//     this.textSize,
//     this.height,
//     required this.width,
//     this.isPrimary = true,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: width.w, // Convert width to screen units using ScreenUtil
//         height: height ?? 40.h,
//         decoration: BoxDecoration(
//           color: isPrimary
//               ? AppColor.blueColor
//               : AppColor.whiteColor, // Conditional color
//           border: isPrimary
//               ? null
//               : Border.all(
//                   color: AppColor.blueColor, width: 2), // Conditional border
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               color: isPrimary
//                   ? Colors.white
//                   : AppColor.blueColor, // Conditional text color
//               fontSize: textSize ?? 15.sp,
//               fontFamily: 'Satoshi',
//               fontWeight: FontWeight.w600,
//               height: 1.5,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  final String text;
  final double? textSize;
  final double? height;
  final void Function()? onTap;
  final bool isPrimary;
  final double width;
  final bool isLoading;
  final bool isEnabled;

  const MyButton({
    super.key,
    required this.text,
    this.onTap,
    this.textSize,
    this.height,
    required this.width,
    this.isPrimary = true,
    this.isLoading = false,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: Container(
        width: width.w,
        height: height ?? 40.h,
        decoration: BoxDecoration(
          color: isPrimary && isEnabled
              ? AppColor.blueColor
              : AppColor.disabledColor,
          border: isPrimary
              ? null
              : Border.all(color: AppColor.blueColor, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLoading
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/StarX Vpn Light Mode/Loading/progress_activity.png', // Replace with your asset path
                      height: 20.h,
                      width: 20.w,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      text,
                      style: TextStyle(
                        color: isPrimary ? Colors.white : AppColor.blueColor,
                        fontSize: textSize ?? 15.sp,
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                  ],
                )
              : Text(
                  text,
                  style: TextStyle(
                    color: isPrimary ? Colors.white : AppColor.blueColor,
                    fontSize: textSize ?? 15.sp,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
        ),
      ),
    );
  }
}

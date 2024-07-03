// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomTextField extends StatelessWidget {
//   final String hint;
//   final bool hidePassword;
//   final TextEditingController? controller;
//   final Widget? suffixIcon;

//   const CustomTextField({
//     Key? key,
//     required this.hint,
//     this.hidePassword = false,
//     this.controller,
//     this.suffixIcon,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       obscureText: hidePassword,
//       decoration: InputDecoration(
//         hintText: hint,
//         hintStyle: TextStyle(
//           fontFamily: 'Satoshi',
//           fontSize: 16.sp,
//           color: Colors.grey, // Adjust hint text color as needed
//         ),
//         suffixIcon: suffixIcon != null
//             ? Padding(
//                 padding: EdgeInsets.all(10.w), // Adjust padding as needed
//                 child: suffixIcon,
//               )
//             : null,
//         contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10.r),
//           borderSide: BorderSide(color: Colors.black),
//         ),
//         filled: true,
//         fillColor: const Color(0xffF6F6F6),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool hidePassword;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String? errorText;

  const CustomTextField({
    Key? key,
    required this.hint,
    this.hidePassword = false,
    this.controller,
    this.suffixIcon,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: hidePassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          fontFamily: 'Satoshi',
          fontSize: 16.sp,
          color: Colors.grey,
        ),
        suffixIcon: suffixIcon != null
            ? Padding(
                padding: EdgeInsets.all(10.w),
                child: suffixIcon,
              )
            : null,
        contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: errorText != null ? Colors.red : Colors.black,
          ),
        ),
        filled: true,
        fillColor: const Color(0xffF6F6F6),
        errorText: errorText,
        errorStyle: TextStyle(
          fontFamily: 'Satoshi',
          fontSize: 12.sp,
          color: Colors.red,
        ),
      ),
    );
  }
}

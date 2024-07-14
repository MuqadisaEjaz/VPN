import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarTwo extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackPressed;

  const CustomAppBarTwo({
    Key? key,
    required this.title,
    required this.onBackPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'SatoshiMedium',
          fontSize: 18.sp,
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
        onPressed: onBackPressed,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

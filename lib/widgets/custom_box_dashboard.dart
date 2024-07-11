import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/view/FreeLocation/location_screen.dart';

class CustomBox extends StatelessWidget {
  final String countryName;
  final String countryImage;
  final String location;

  const CustomBox({
    Key? key,
    required this.countryName,
    required this.countryImage,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return Container(
              height: MediaQuery.of(context).size.height *
                  0.85, // Set the height here
              child: LocationScreen(),
            );
          },
        );
      },
      child: Container(
        width: 400.w,
        padding: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          color: Color(0xFFF6F7FA),
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              countryImage,
              height: 60.h,
              width: 60.w,
            ),
            SizedBox(width: 20.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  countryName,
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 16.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  location,
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 14.sp,
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

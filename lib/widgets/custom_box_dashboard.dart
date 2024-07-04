import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBox extends StatelessWidget {
  final String countryName;
  final String countryImage; // Path to the country image asset
  final String location; // Location text

  const CustomBox({
    Key? key,
    required this.countryName,
    required this.countryImage,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      // height: 100.h, // Adjust width as needed
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Color(0xFFF6F7FA), // Set color to #F6F7FA
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          // BoxShadow(
          //   color: Color.fromARGB(255, 212, 211, 211).withOpacity(0.5),
          //   spreadRadius: 2,
          //   blurRadius: 5,
          //   offset: Offset(0, 3), // changes position of shadow
          // ),
        ],
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
              Row(
                children: [
                  // Icon(
                  //   Icons.location_on,
                  //   size: 16.sp,
                  //   color: Colors.grey,
                  // ),
                  // SizedBox(width: 5.w),
                  Text(
                    location,
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 14.sp,
                      // color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

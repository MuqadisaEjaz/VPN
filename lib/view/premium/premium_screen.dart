import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PremiumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Premium',
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
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/dashboard');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeatureItem(
              iconPath:
                  'assets/StarX Vpn Light Mode/Premium Sscreen icons/globe.png',
              title: 'Strong encryption',
              description: 'Maximum protection for your data',
            ),
            SizedBox(height: 16.h),
            FeatureItem(
              iconPath:
                  'assets/StarX Vpn Light Mode/Premium Sscreen icons/access.png',
              title: 'Unlimited access',
              description: 'Wide range of servers worldwide',
            ),
            SizedBox(height: 16.h),
            FeatureItem(
              iconPath:
                  'assets/StarX Vpn Light Mode/Premium Sscreen icons/other_icon.png', // Update with the correct icon path
              title: 'Fast connection',
              description: 'High-speed internet with no limits',
            ),
            SizedBox(height: 16.h),
            FeatureItem(
              iconPath:
                  'assets/StarX Vpn Light Mode/Premium Sscreen icons/another_icon.png', // Update with the correct icon path
              title: 'Privacy protection',
              description: 'Keep your online activity private',
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String description;

  const FeatureItem({
    required this.iconPath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          height: 30.h,
          width: 30.w,
        ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'SatoshiMedium',
                fontSize: 16.sp,
              ),
            ),
            Text(
              description,
              style: TextStyle(
                fontFamily: 'SatoshiRegular',
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

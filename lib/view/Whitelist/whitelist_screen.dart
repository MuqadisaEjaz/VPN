import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';

class WhitelistScreen extends StatefulWidget {
  @override
  _WhitelistScreenState createState() => _WhitelistScreenState();
}

class _WhitelistScreenState extends State<WhitelistScreen> {
  List<bool> isSelected = [false, false, false, false]; // Track selection state

  void toggleSelection(int index) {
    setState(() {
      isSelected[index] = !isSelected[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Whitelist',
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
      body: ListView.builder(
        itemCount: socialMediaItems.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                leading: Image.asset(
                  socialMediaItems[index]['icon']!,
                  height: 30.h,
                  width: 30.w,
                ),
                title: Text(
                  socialMediaItems[index]['name']!,
                  style: TextStyle(
                    fontFamily: 'SatoshiMedium',
                    fontSize: 16.sp,
                    color:
                        isSelected[index] ? AppColor.blueColor : Colors.black,
                  ),
                ),
                trailing: Image.asset(
                  isSelected[index]
                      ? 'assets/StarX Vpn Light Mode/Check Circle/Editing Selected Dark.png'
                      : 'assets/StarX Vpn Light Mode/Check Circle/Editing Unselected Dark.png',
                  height: 40.h,
                  width: 40.w,
                ),
                onTap: () => toggleSelection(index),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
                height: 0,
                indent: 16.w,
                endIndent: 16.w,
              ),
            ],
          );
        },
      ),
    );
  }
}

List<Map<String, String?>> socialMediaItems = [
  {
    'name': 'Facebook',
    'icon': 'assets/StarX Vpn Light Mode/whitelist/facebook.png',
  },
  {
    'name': 'Twitter',
    'icon': 'assets/StarX Vpn Light Mode/whitelist/twitter.png',
  },
  {
    'name': 'LinkedIn',
    'icon': 'assets/StarX Vpn Light Mode/whitelist/linkedin.png',
  },
  {
    'name': 'Instagram',
    'icon': 'assets/StarX Vpn Light Mode/whitelist/insta.png',
  },
];

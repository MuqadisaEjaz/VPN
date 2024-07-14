import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/Models/whitelist_model.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/widgets/custom_appbar_two.dart';

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
      appBar: CustomAppBarTwo(
        title: 'Whitelist',
        onBackPressed: () {
          Navigator.pushReplacementNamed(context, '/dashboard');
        },
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

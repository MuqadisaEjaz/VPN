import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/providers/myaccount_provider.dart';
import 'package:starxvpn_lightmode/widgets/custom_text_fields.dart';
import 'package:starxvpn_lightmode/widgets/my_button.dart';

class ChangeUserInfoScreen extends StatefulWidget {
  @override
  _ChangeUserInfoScreenState createState() => _ChangeUserInfoScreenState();
}

class _ChangeUserInfoScreenState extends State<ChangeUserInfoScreen> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Access provider and update text controllers
    MyAccountProvider provider = MyAccountProvider();

    // Set initial values from provider to text controllers
    _fullNameController.text = provider.fullName;
    _emailController.text = provider.email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'assets/StarX Vpn Light Mode/Back Button/Back Button.png',
            height: 60.h,
            width: 60.w,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/myaccount');
          },
        ),
        title: Text(
          "Change User Information",
          style: TextStyle(fontFamily: 'Satoshi', fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            CustomTextField(
              controller: _fullNameController,
              hint: 'name',
              suffixIcon: null,
            ),
            SizedBox(height: 20.h),
            Text(
              'Email',
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            CustomTextField(
              controller: _emailController,
              hint: 'example@example',
              suffixIcon: null,
            ),
            SizedBox(height: 50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                  text: 'Cancel',
                  width: 150.w,
                  isPrimary: false,
                  onTap: () {
                    // Handle cancel action
                  },
                ),
                MyButton(
                  text: 'Save',
                  width: 150.w,
                  isPrimary: true,
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/verification');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

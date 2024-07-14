import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/providers/myaccount_provider.dart';
import 'package:starxvpn_lightmode/widgets/custom_appbar_two.dart';
import 'package:starxvpn_lightmode/widgets/custom_dialogbox.dart';
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
      appBar: CustomAppBarTwo(
        title: 'Change User Information',
        onBackPressed: () {
          Navigator.pushReplacementNamed(context, '/myaccount');
        },
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
                    //Navigator.pushReplacementNamed(context, '/verification');
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomDialog(
                          content:
                              'Are you sure you want to update user information?',
                          negativeButtonText: 'Cancel',
                          positiveButtonText: 'Save',
                          onNegativeTap: () {
                            Navigator.of(context).pop();
                          },
                          onPositiveTap: () {
                            Navigator.pushReplacementNamed(
                                context, '/verification');
                          },
                        );
                      },
                    );
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

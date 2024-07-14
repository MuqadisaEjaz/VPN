import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/Models/languages_model.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';

class LanguagesScreen extends StatefulWidget {
  @override
  _LanguagesScreenState createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  int selectedLanguageIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0), // Rounded corners
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                border: Border(top: BorderSide(color: Colors.grey.shade300)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10.h), // Space between the line and the text
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.grey.shade300,
                          width: 3.0,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Text(
                      'Languages',
                      textAlign: TextAlign.center, // Center align text
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 20.sp,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          margin: EdgeInsets.symmetric(horizontal: 15.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: AppColor.greyColor),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/StarX Vpn Light Mode/Search Icon/Magnifier.png', // Replace with your search icon asset
                                height: 20.h,
                                width: 20.w,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: languages.asMap().entries.map((entry) {
                      int index = entry.key;
                      Map<String, String> language = entry.value;
                      bool isSelected = index == selectedLanguageIndex;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedLanguageIndex = index;
                          });
                          // Handle language selection if needed
                        },
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              horizontal: 20.w,
                              vertical: 10.h), // Adjust margins as needed
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: isSelected
                                  ? Colors.grey.shade200
                                  : Colors.grey.shade300,
                            ),
                          ),
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                language['imagePath']!,
                                width: 30.w,
                                height: 30.h,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                language['name']!,
                                style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/Models/helpandsupport_model.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/widgets/custom_appbar_two.dart';
import 'package:starxvpn_lightmode/widgets/my_button.dart';

class HelpSupportScreen extends StatefulWidget {
  @override
  _HelpSupportScreenState createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends State<HelpSupportScreen> {
  final List<String> categories = [
    "General",
    "IP",
    "Payment",
    "Multiple Devices",
    "Password",
  ];

  String? selectedCategory;
  bool isLoadMoreClicked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTwo(
        title: 'Help & Support',
        onBackPressed: () {
          Navigator.pushReplacementNamed(context, '/dashboard');
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories.map((category) {
                  // Measure text width
                  final TextPainter textPainter = TextPainter(
                    text: TextSpan(
                      text: category,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: 'Satoshi',
                      ),
                    ),
                    maxLines: 1,
                    textDirection: TextDirection.ltr,
                  )..layout();

                  // Calculate button width based on text width with padding
                  double buttonWidth = textPainter.width + 32.0;

                  return Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: MyButton(
                      text: category,
                      onTap: () {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                      width: buttonWidth,
                      isPrimary: selectedCategory == category,
                      isEnabled: true,
                      textSize: 15.sp,
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: AppColor.greyColor,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/StarX Vpn Light Mode/Search Icon/Magnifier.png',
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
            SizedBox(height: 20.h),
            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      String answer = index < answers.length
                          ? answers[index]
                          : "No answer available for this question.";
                      _showQuestionBottomSheet(
                        context,
                        questions[index],
                        answer,
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 20.w),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey.shade300)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 250.w,
                            child: Text(
                              questions[index],
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, size: 14.sp),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20.h),
            MyButton(
              text: 'Load More',
              onTap: () {
                setState(() {
                  isLoadMoreClicked = !isLoadMoreClicked;
                });
              },
              width: double.infinity,
              isPrimary: true,
              isEnabled: true,
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  void _showQuestionBottomSheet(
      BuildContext context, String question, String answer) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.85,
          child: SingleChildScrollView(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      border:
                          Border(top: BorderSide(color: Colors.grey.shade300)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
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
                            'Help',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 20.sp,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          question,
                          style: TextStyle(
                            fontFamily: 'SatoshiMedium',
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          answer,
                          style: TextStyle(
                            fontFamily: 'SatoshiRegular',
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

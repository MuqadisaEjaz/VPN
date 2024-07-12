// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:starxvpn_lightmode/const/app_colors.dart';
// import 'package:starxvpn_lightmode/widgets/my_button.dart'; // Replace with your actual import path for MyButton

// class HelpSupportScreen extends StatefulWidget {
//   @override
//   _HelpSupportScreenState createState() => _HelpSupportScreenState();
// }

// class _HelpSupportScreenState extends State<HelpSupportScreen> {
//   // List of questions
//   final List<String> questions = [
//     "Can I use VPN to access online streaming services?",
//     "How do I update the VPN app to the latest version?",
//     "Can I use one VPN account on multiple devices?",
//     "I encountered an issue with VPN connection, how do I uninstall and reinstall the app?",
//     "I forgot my password, how can I reset it?",
//     "How do I activate VPN connection on my device?",
//     "Can I choose a server for fastest speed?",
//     "How to customize my IP?",
//   ];

//   final List<String> answers = [
//     "VPN allows you to bypass geographical restrictions by connecting to servers in different locations, thereby granting you access to content that may be blocked in your region.\n\nHowever, please note that some streaming platforms may have policies against the use of VPNs, so it's essential to review their terms of service to ensure compliance."
//   ];

//   // List of categories for buttons
//   final List<String> categories = [
//     "General",
//     "IP",
//     "Payment",
//     "Multiple Devices",
//     "Password",
//   ];

//   // Selected category
//   String? selectedCategory;

//   // Button click state
//   bool isLoadMoreClicked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Help & Support',
//           style: TextStyle(
//             fontFamily: 'SatoshiMedium',
//             fontSize: 18.sp,
//           ),
//         ),
//         centerTitle: true,
//         elevation: 0,
//         leading: IconButton(
//           icon: Image.asset(
//             'assets/StarX Vpn Light Mode/Back Button/Back Button.png',
//             height: 40.h,
//             width: 40.w,
//           ),
//           onPressed: () {
//             Navigator.pushReplacementNamed(context, '/dashboard');
//           },
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 20.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             SizedBox(height: 20.h),
//             // Row of category buttons
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: categories.map((category) {
//                   return Padding(
//                     padding: EdgeInsets.only(right: 10.w),
//                     child: MyButton(
//                       text: category,
//                       onTap: () {
//                         setState(() {
//                           selectedCategory = category;
//                         });
//                       },
//                       width: 100,
//                       isPrimary: selectedCategory == category,
//                       isEnabled: true,
//                       textSize: 15.sp,
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ),
//             SizedBox(height: 20.h),
//             // Search bar
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 20.w),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 color: AppColor.greyColor,
//               ),
//               child: Row(
//                 children: [
//                   Image.asset(
//                     'assets/StarX Vpn Light Mode/Search Icon/Magnifier.png',
//                     height: 20.h,
//                     width: 20.w,
//                   ),
//                   SizedBox(width: 10.w),
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Search',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20.h),
//             // List of questions
//             Expanded(
//               child: ListView.builder(
//                 itemCount: questions.length,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       String answer = index < answers.length
//                           ? answers[index]
//                           : "No answer available for this question.";
//                       _showQuestionBottomSheet(
//                         context,
//                         questions[index],
//                         answer,
//                       );
//                     },
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                           vertical: 10.h, horizontal: 20.w),
//                       decoration: BoxDecoration(
//                         border: Border(
//                             bottom: BorderSide(color: Colors.grey.shade300)),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             width: 250.w,
//                             child: Text(
//                               questions[index],
//                               style: TextStyle(
//                                 fontFamily: 'Satoshi',
//                                 fontSize: 14.sp,
//                               ),
//                             ),
//                           ),
//                           Icon(Icons.arrow_forward_ios, size: 14.sp),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 20.h),
//             // Load more button
//             MyButton(
//               text: 'Load More',
//               onTap: () {
//                 setState(() {
//                   isLoadMoreClicked = !isLoadMoreClicked;
//                 });
//               },
//               width: double.infinity,
//               isPrimary: isLoadMoreClicked,
//               isEnabled: true,
//             ),
//             SizedBox(height: 20.h),
//           ],
//         ),
//       ),
//     );
//   }

//   void _showQuestionBottomSheet(
//       BuildContext context, String question, String answer) {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return Container(
//           height: MediaQuery.of(context).size.height * 0.85,
//           child: SingleChildScrollView(
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(30.0), // Rounded corners
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(25.0),
//                       border:
//                           Border(top: BorderSide(color: Colors.grey.shade300)),
//                     ),
//                     child: Column(
//                       children: [
//                         SizedBox(
//                             height:
//                                 10.h), // Space between the line and the text
//                         Container(
//                           decoration: BoxDecoration(
//                             border: Border(
//                               top: BorderSide(
//                                 color: Colors.grey.shade300,
//                                 width: 3.0,
//                               ),
//                             ),
//                           ),
//                           padding: EdgeInsets.symmetric(vertical: 10.h),
//                           child: Text(
//                             'Help',
//                             textAlign: TextAlign.center, // Center align text
//                             style: TextStyle(
//                               fontFamily: 'Satoshi',
//                               fontSize: 20.sp,
//                               // fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         // Add more content here if needed
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(20.w),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           question,
//                           style: TextStyle(
//                             fontFamily: 'SatoshiMedium',
//                             fontSize: 16.sp,
//                           ),
//                         ),
//                         SizedBox(height: 20.h),
//                         Text(
//                           answer,
//                           style: TextStyle(
//                             fontFamily: 'SatoshiRegular',
//                             fontSize: 14.sp,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/widgets/my_button.dart'; // Replace with your actual import path for MyButton

class HelpSupportScreen extends StatefulWidget {
  @override
  _HelpSupportScreenState createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends State<HelpSupportScreen> {
  // List of questions
  final List<String> questions = [
    "Can I use VPN to access online streaming services?",
    "How do I update the VPN app to the latest version?",
    "Can I use one VPN account on multiple devices?",
    "I encountered an issue with VPN connection, how do I uninstall and reinstall the app?",
    "I forgot my password, how can I reset it?",
    "How do I activate VPN connection on my device?",
    "Can I choose a server for fastest speed?",
    "How to customize my IP?",
  ];

  final List<String> answers = [
    "VPN allows you to bypass geographical restrictions by connecting to servers in different locations, thereby granting you access to content that may be blocked in your region.\n\nHowever, please note that some streaming platforms may have policies against the use of VPNs, so it's essential to review their terms of service to ensure compliance."
  ];

  // List of categories for buttons
  final List<String> categories = [
    "General",
    "IP",
    "Payment",
    "Multiple Devices",
    "Password",
  ];

  // Selected category
  String? selectedCategory;

  // Button click state
  bool isLoadMoreClicked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help & Support',
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
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.h),
            // Row of category buttons
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
                  double buttonWidth =
                      textPainter.width + 32.0; // Adjust padding as needed

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
            // Search bar
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
            // List of questions
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
            // Load more button
            MyButton(
              text: 'Load More',
              onTap: () {
                setState(() {
                  isLoadMoreClicked = !isLoadMoreClicked;
                });
              },
              width: double.infinity,
              isPrimary: isLoadMoreClicked,
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
              borderRadius: BorderRadius.circular(30.0), // Rounded corners
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
                        SizedBox(
                            height:
                                10.h), // Space between the line and the text
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
                            textAlign: TextAlign.center, // Center align text
                            style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 20.sp,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // Add more content here if needed
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

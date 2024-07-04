// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:starxvpn_lightmode/widgets/custom_appbar.dart';
// // import 'package:starxvpn_lightmode/widgets/custom_box_dashboard.dart';

// // class DashboardScreen extends StatefulWidget {
// //   @override
// //   _DashboardScreenState createState() => _DashboardScreenState();
// // }

// // class _DashboardScreenState extends State<DashboardScreen> {
// //   String ipAddress = '112.012.2311'; // Example IP address
// //   String userName = 'Syed Wajahat Hassan'; // Example user name

// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         appBar: CustomAppBar(userName: userName), // Pass actual user name here
// //         body: SingleChildScrollView(
// //           child: Container(
// //             height: MediaQuery.of(context).size.height -
// //                 kToolbarHeight -
// //                 MediaQuery.of(context).padding.top,
// //             child: Stack(
// //               children: [
// //                 Positioned.fill(
// //                   top: kToolbarHeight + 5.h,
// //                   child: Center(
// //                     child: Image.asset(
// //                       'assets/StarX Vpn Light Mode/Map Illustration/Group.png',
// //                       fit: BoxFit.cover,
// //                     ),
// //                   ),
// //                 ),
// //                 Positioned.fill(
// //                   child: Column(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       CustomBox(
// //                           countryName:
// //                               'United Kingdom'), // Pass actual country name here
// //                       SizedBox(height: 20.h),
// //                       Text(
// //                         'Your IP',
// //                         style: TextStyle(
// //                           fontFamily: 'Satoshi',
// //                           fontSize: 16.sp,
// //                           color: Colors.black,
// //                         ),
// //                       ),
// //                       SizedBox(height: 10.h),
// //                       Text(
// //                         ipAddress, // Display actual IP address
// //                         style: TextStyle(
// //                           fontFamily: 'Satoshi',
// //                           fontSize: 16.sp,
// //                           color: Colors.black,
// //                         ),
// //                       ),
// //                       SizedBox(height: 20.h),
// //                       Image.asset(
// //                         'assets/StarX Vpn Light Mode/Vpn Off and On Button/Off Button.png', // Replace with your VPN image asset
// //                         height: 60.h,
// //                         width: 60.w,
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:starxvpn_lightmode/widgets/custom_appbar.dart';
// import 'package:starxvpn_lightmode/widgets/custom_box_dashboard.dart';
// // Import your CustomBox widget here

// class DashboardScreen extends StatefulWidget {
//   @override
//   _DashboardScreenState createState() => _DashboardScreenState();
// }

// class _DashboardScreenState extends State<DashboardScreen> {
//   String ipAddress = '112.456.7569'; // Example IP address
//   String userName = 'Syed Wajahat Hassan'; // Example user name

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: CustomAppBar(userName: userName), // Pass actual user name here
//         body: SingleChildScrollView(
//           child: Container(
//             height: MediaQuery.of(context).size.height -
//                 kToolbarHeight -
//                 MediaQuery.of(context).padding.top,
//             child: Stack(
//               children: [
//                 Positioned.fill(
//                   top: kToolbarHeight + 5.h,
//                   child: Center(
//                     child: Image.asset(
//                       'assets/StarX Vpn Light Mode/Map Illustration/Group.png',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Positioned.fill(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CustomBox(
//                         countryName: 'United Kingdom',
//                         countryImage:
//                             'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
//                         location: 'London', // Example location
//                       ),
//                       SizedBox(height: 20.h),
//                       Text(
//                         'Your IP',
//                         style: TextStyle(
//                           fontFamily: 'Satoshi',
//                           fontSize: 16.sp,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(height: 10.h),
//                       Text(
//                         ipAddress, // Display actual IP address
//                         style: TextStyle(
//                           fontFamily: 'Satoshi',
//                           fontSize: 16.sp,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(height: 20.h),
//                       Image.asset(
//                         'assets/StarX Vpn Light Mode/Vpn Off and On Button/Off Button.png', // Replace with your VPN image asset
//                         height: 60.h,
//                         width: 60.w,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:starxvpn_lightmode/widgets/custom_appbar.dart';
// import 'package:starxvpn_lightmode/widgets/custom_box_dashboard.dart';

// class DashboardScreen extends StatefulWidget {
//   @override
//   _DashboardScreenState createState() => _DashboardScreenState();
// }

// class _DashboardScreenState extends State<DashboardScreen> {
//   String ipAddress = '112.456.7569'; // Example IP address
//   String userName = 'Syed Wajahat Hassan'; // Example user name

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: CustomAppBar(userName: userName), // Pass actual user name here
//         body: SingleChildScrollView(
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             padding: EdgeInsets.symmetric(horizontal: 20.w),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 20.h), // Adjust as needed
//                 CustomBox(
//                   countryName: 'United Kingdom',
//                   countryImage:
//                       'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
//                   location: 'London', // Example location
//                 ),
//                 SizedBox(height: 20.h),
//                 Text(
//                   'Your IP',
//                   style: TextStyle(
//                     fontFamily: 'Satoshi',
//                     fontSize: 16.sp,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 10.h),
//                 Text(
//                   ipAddress, // Display actual IP address
//                   style: TextStyle(
//                     fontFamily: 'Satoshi',
//                     fontSize: 16.sp,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 20.h),
//                 Image.asset(
//                   'assets/StarX Vpn Light Mode/Vpn Off and On Button/Off Button.png', // Replace with your VPN image asset
//                   height: 60.h,
//                   width: 60.w,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/widgets/custom_appbar.dart';
import 'package:starxvpn_lightmode/widgets/custom_box_dashboard.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String ipAddress = '112.456.7569'; // Example IP address
  String userName = 'Syed Wajahat Hassan'; // Example user name

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(userName: userName), // Pass actual user name here
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h), // Adjust as needed
              CustomBox(
                countryName: 'United Kingdom',
                countryImage:
                    'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
                location: 'London', // Example location
              ),
              SizedBox(height: 20.h),
              Stack(
                children: [
                  Positioned(
                    top: kToolbarHeight,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/StarX Vpn Light Mode/Map Illustration/Group.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20.h), // Adjust as needed
                        Text(
                          'Your IP',
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 16.sp,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          ipAddress, // Display actual IP address
                          style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 16.sp,
                              color: AppColor.blueColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20.h),
                        // Positioned.fill(
                        //   child: Image.asset(
                        //     'assets/StarX Vpn Light Mode/Map Illustration/Group.png',
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                        Image.asset(
                          'assets/StarX Vpn Light Mode/Vpn Off and On Button/Off Button.png', // Replace with your VPN image asset
                          height: 200.h,
                          width: 200.w,
                        ),
                        Text(
                          'VPN is OFF', // Display actual IP address
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/widgets/custom_appbar.dart';
import 'package:starxvpn_lightmode/widgets/custom_box_dashboard.dart';
import 'package:starxvpn_lightmode/widgets/custom_dialogbox.dart';
import 'package:starxvpn_lightmode/widgets/custom_messagebar.dart';
import 'package:starxvpn_lightmode/widgets/my_button.dart';
import 'package:starxvpn_lightmode/providers/dashboard_provider.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String ipAddress = '112.456.7569'; // Example IP address
  String userName = 'Syed Wajahat Hassan'; // Example user name

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DashboardProvider>(
      create: (_) => DashboardProvider(),
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  CustomAppBar(
                      userName: userName), // Pass actual user name here
                  Expanded(
                    child: SingleChildScrollView(
                      child: Consumer<DashboardProvider>(
                        builder: (context, dashboardProvider, _) => Column(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      if (!dashboardProvider.isConnecting) ...[
                                        SizedBox(
                                            height: 20.h), // Adjust as needed
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
                                      ],
                                      SizedBox(height: 20.h),
                                      GestureDetector(
                                        onTap: () {
                                          if (dashboardProvider
                                              .isVPNConnected) {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return CustomDialog(
                                                  content:
                                                      'Are you sure you want to disconnect',
                                                  negativeButtonText: 'Cancel',
                                                  positiveButtonText:
                                                      'Disconnect',
                                                  positiveButtonColor:
                                                      AppColor.errorColor,
                                                  onNegativeTap: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  onPositiveTap: () {
                                                    Navigator.of(context).pop();
                                                    dashboardProvider
                                                        .disconnectVPN();
                                                  },
                                                );
                                              },
                                            );
                                          } else {
                                            // Perform connect action
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return CustomDialog(
                                                  title:
                                                      'Would you like to Add VPN Configurations?',
                                                  content:
                                                      'All network activity on this iPhone may be filtered or monitored when using VPN.',
                                                  negativeButtonText:
                                                      'Don\'t Allow',
                                                  positiveButtonText: 'Allow',
                                                  onNegativeTap: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  onPositiveTap: () {
                                                    Navigator.of(context).pop();
                                                    dashboardProvider
                                                        .connectVPN();
                                                  },
                                                );
                                              },
                                            );
                                          }
                                        },
                                        child: Image.asset(
                                          dashboardProvider.isVPNConnected
                                              ? 'assets/StarX Vpn Light Mode/Vpn Off and On Button/On Button.png'
                                              : 'assets/StarX Vpn Light Mode/Vpn Off and On Button/Off Button.png', // Replace with your VPN image asset
                                          height: 200.h,
                                          width: 200.w,
                                        ),
                                      ),
                                      Text(
                                        dashboardProvider.isConnecting
                                            ? 'Connecting...'
                                            : (dashboardProvider.isVPNConnected
                                                ? 'VPN is ON'
                                                : 'VPN is OFF'), // Display actual IP address
                                        style: TextStyle(
                                          fontFamily: 'Satoshi',
                                          fontSize: 16.sp,
                                          color: dashboardProvider
                                                      .isVPNConnected ||
                                                  dashboardProvider.isConnecting
                                              ? Colors.green
                                              : Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Consumer<DashboardProvider>(
                builder: (context, provider, child) {
                  return provider.showConnectMessage
                      ? Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: CustomMessageBar(
                            message:
                                'You are Connected from the server successfully',
                            iconPath:
                                'assets/StarX Vpn Light Mode/Check Circle green icon/Check Circle.png',
                            iconColor: Colors.green,
                            onClose: () {
                              provider.setShowConnectMessage(false);
                            },
                          ),
                        )
                      : Container();
                },
              ),
              Consumer<DashboardProvider>(
                builder: (context, provider, child) {
                  return provider.showDisconnectMessage
                      ? Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: CustomMessageBar(
                            message:
                                'Disconnected from the server successfully',
                            messageColor: Colors.white,
                            bgColor: AppColor.errorColor,
                            iconPath:
                                'assets/StarX Vpn Light Mode/Error/error.png',
                            iconColor: Colors.white,
                            onClose: () {
                              provider.setShowDisconnectMessage(false);
                            },
                          ),
                        )
                      : Container();
                },
              ),
            ],
          ),
          bottomNavigationBar: Consumer<DashboardProvider>(
            builder: (context, dashboardProvider, _) {
              if (dashboardProvider.isVPNConnected) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 100.0, // Adjust padding as needed
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: TextButton.icon(
                          onPressed: () {
                            // Handle first button tap
                          },
                          icon: Icon(
                            Icons.file_download_outlined,
                            color: AppColor.blueColor,
                          ),
                          label: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 16.0),
                            child: Text(
                              '62.5 MB/s',
                              style: TextStyle(
                                fontFamily: 'SatoshiBold',
                                fontSize: 16.0,
                                color: AppColor.blueColor,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            side: BorderSide(color: AppColor.blueColor),
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: TextButton.icon(
                          onPressed: () {
                            // Handle second button tap
                          },
                          icon: Icon(
                            Icons.file_upload_outlined,
                            color: AppColor.blueColor,
                          ),
                          label: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 16.0),
                            child: Text(
                              '41.2 MB/s',
                              style: TextStyle(
                                fontFamily: 'SatoshiBold',
                                fontSize: 16.0,
                                color: AppColor.blueColor,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            side: BorderSide(color: AppColor.blueColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return SizedBox
                    .shrink(); // Return an empty widget instead of Container
              }
            },
          ),
        ),
      ),
    );
  }
}

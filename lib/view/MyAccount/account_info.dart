import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/providers/myaccount_provider.dart';
import 'package:starxvpn_lightmode/widgets/custom_appbar_two.dart';
import 'package:starxvpn_lightmode/widgets/custom_messagebar.dart';

class AccountInfoScreen extends StatefulWidget {
  @override
  _AccountInfoScreenState createState() => _AccountInfoScreenState();
}

class _AccountInfoScreenState extends State<AccountInfoScreen> {
  final TextStyle myText = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    final bool showMessageBar = true;

    return ChangeNotifierProvider<MyAccountProvider>(
      create: (_) => MyAccountProvider(),
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBarTwo(
                  title: 'My Account',
                  onBackPressed: () {
                    Navigator.pushReplacementNamed(context, '/dashboard');
                  },
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 25, 16, 0),
                    child: ListView(
                      children: [
                        Consumer<MyAccountProvider>(
                          builder: (context, provider, child) {
                            return Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: AppColor
                                      .blueColor, // Replace with your desired background color
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            provider.fullName,
                                            style: const TextStyle(
                                              color: AppColor.whiteColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(
                                              height:
                                                  6), // Adjust the height as needed
                                          Text(
                                            'Email: ${provider.email}',
                                            style: const TextStyle(
                                              color: AppColor.whiteColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushReplacementNamed(
                                              context, '/changeinfo');
                                        },
                                        child: Image.asset(
                                          'assets/StarX Vpn Light Mode/Edit pencil Vector/Vector.png',
                                          width: 24,
                                          height: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 16.0),
                        Consumer<MyAccountProvider>(
                          builder: (context, provider, child) {
                            return Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: AppColor.whiteColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'My ID',
                                          style: myText,
                                        ),
                                        SizedBox(width: 16.0),
                                        Text(
                                          ':',
                                          style: myText,
                                        ),
                                        SizedBox(width: 16.0),
                                        Text(
                                          provider.myId,
                                          style: myText,
                                        ),
                                        SizedBox(width: 16.0),
                                        Image.asset(
                                          'assets/StarX Vpn Light Mode/Copy icon/Copy.png', // Replace with your image asset path
                                          width: 22,
                                          height: 22,
                                        ),
                                        // Space between icon and text
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'My IP',
                                          style: myText,
                                        ),
                                        SizedBox(width: 16.0),
                                        Text(
                                          ':',
                                          style: myText,
                                        ),
                                        SizedBox(width: 16.0),
                                        Text(
                                          provider.myIp,
                                          style: myText,
                                        ),
                                        SizedBox(width: 16.0),
                                        Image.asset(
                                          'assets/StarX Vpn Light Mode/Copy icon/Copy.png', // Replace with your image asset path
                                          width: 22,
                                          height: 22,
                                        ),
                                        // Space between icon and text
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Type',
                                          style: myText,
                                        ),
                                        SizedBox(width: 20.0),
                                        Text(
                                          ':',
                                          style: myText,
                                        ),
                                        SizedBox(width: 18.0),
                                        Text(provider.type,
                                            style: TextStyle(
                                                fontFamily: 'Satoshi',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: AppColor.blueColor)),
                                        SizedBox(width: 25.0),
                                        Text(provider.daysLeft,
                                            style: TextStyle(
                                              fontFamily: 'SatoshiRegular',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            if (showMessageBar)
              Consumer<MyAccountProvider>(
                builder: (context, provider, child) {
                  return provider.showSuccessMessage
                      ? Positioned(
                          top: 30,
                          left: 0,
                          right: 0,
                          child: CustomMessageBar(
                            message: 'User Information changed',
                            iconPath:
                                'assets/StarX Vpn Light Mode/Check Circle green icon/Check Circle.png',
                            iconColor: Colors.green,
                            onClose: () {
                              provider.setShowSuccessMessage(false);
                            },
                          ),
                        )
                      : Container();
                },
              ),
          ],
        ),
      ),
    );
  }
}

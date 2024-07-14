import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/widgets/custom_appbar_two.dart';

class ProtocolScreen extends StatefulWidget {
  @override
  _ProtocolScreenState createState() => _ProtocolScreenState();
}

class _ProtocolScreenState extends State<ProtocolScreen> {
  int selectedIndex = -1;

  void onItemSelected(int index) {
    setState(() {
      if (selectedIndex == index) {
        selectedIndex = -1;
      } else {
        selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTwo(
        title: 'Protocols',
        onBackPressed: () {
          Navigator.pushReplacementNamed(context, '/dashboard');
        },
      ),
      body: ListView.separated(
        itemCount: protocolItems.length,
        separatorBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Divider(color: Colors.grey),
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              selectedIndex == index
                  ? 'assets/StarX Vpn Light Mode/Radio Buttons/Radio Button.png'
                  : 'assets/StarX Vpn Light Mode/Radio Buttons/Radio off Button.png',
              height: 20.h,
              width: 20.w,
            ),
            title: Text(
              protocolItems[index],
              style: TextStyle(
                fontFamily: 'SatoshiMedium',
                fontSize: 16.sp,
                color:
                    selectedIndex == index ? AppColor.blueColor : Colors.black,
              ),
            ),
            onTap: () => onItemSelected(index),
          );
        },
      ),
    );
  }
}

List<String> protocolItems = [
  'OpenVPN',
  'IKEv2',
  'L2TP/IPsec',
  'PPTP',
  'Wireguard',
  'Shodowshock'
];

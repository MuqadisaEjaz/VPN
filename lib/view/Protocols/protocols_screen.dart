import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';

class ProtocolScreen extends StatefulWidget {
  @override
  _ProtocolScreenState createState() => _ProtocolScreenState();
}

class _ProtocolScreenState extends State<ProtocolScreen> {
  int selectedIndex = -1;

  void onItemSelected(int index) {
    setState(() {
      if (selectedIndex == index) {
        selectedIndex = -1; // Deselect if the same item is clicked again
      } else {
        selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Protocols',
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

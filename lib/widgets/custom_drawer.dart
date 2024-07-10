import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool _isAppAppearanceExpanded = false;
  String _selectedTheme = 'Light'; // Default theme set to 'Light'
  bool _isKillSwitchOn = false;
  bool _isAutoConnectOn = false;
  bool _isRotatingIpOn = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              leading: IconButton(
                icon: Image.asset(
                  'assets/StarX Vpn Light Mode/Back Button/Back Button.png',
                  height: 40.h,
                  width: 40.w,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              title: Text('Settings'),
              automaticallyImplyLeading: false,
              centerTitle: true,
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundImage: AssetImage(
                        'assets/StarX Vpn Light Mode/Profile/iryna-makarchuk-MDt3FQMgvVo-unsplash 2.png',
                      ), // Replace with actual image path
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Syed Wajahat Hassan',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: ListTile(
                leading: Image.asset(
                  'assets/StarX Vpn Light Mode/Settings icons/Premium.png',
                  height: 40.h,
                  width: 40.w,
                ), // Increased size of Premium icon
                title: Text(
                  'Subscribe To Premium',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 15.sp,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Handle Premium navigation
                },
                tileColor: AppColor.blueColor,
              ),
            ),
            _buildDrawerItem(
              imagePath:
                  'assets/StarX Vpn Light Mode/Settings icons/My account.png',
              text: 'My Account',
              trailing: Image.asset(
                'assets/StarX Vpn Light Mode/Settings icons/Chevron.png',
                height: 10.h,
                width: 10.w,
              ),
              onTap: () {
                // Handle My Account navigation
              },
            ),
            Divider(),
            _buildDrawerItem(
              imagePath:
                  'assets/StarX Vpn Light Mode/Settings icons/Protocols.png',
              text: 'Protocols',
              trailing: Image.asset(
                'assets/StarX Vpn Light Mode/Settings icons/Chevron.png',
                height: 10.h,
                width: 10.w,
              ),
              onTap: () {
                // Handle Protocols navigation
              },
            ),
            Divider(),
            _buildDrawerItem(
              imagePath:
                  'assets/StarX Vpn Light Mode/Settings icons/Kill switch.png',
              text: 'Kill Switch',
              trailing: Image.asset(
                _isKillSwitchOn
                    ? 'assets/StarX Vpn Light Mode/Settings icons/Switch on.png'
                    : 'assets/StarX Vpn Light Mode/Settings icons/Switch off.png',
                height: 30.h,
                width: 30.w,
              ),
              onTap: () {
                setState(() {
                  _isKillSwitchOn = !_isKillSwitchOn;
                });
              },
            ),
            Divider(),
            _buildDrawerItem(
              imagePath:
                  'assets/StarX Vpn Light Mode/Settings icons/wifi-connected-02.png',
              text: 'Auto-connect',
              trailing: Image.asset(
                _isAutoConnectOn
                    ? 'assets/StarX Vpn Light Mode/Settings icons/Switch on.png'
                    : 'assets/StarX Vpn Light Mode/Settings icons/Switch off.png',
                height: 30.h,
                width: 30.w,
              ),
              onTap: () {
                setState(() {
                  _isAutoConnectOn = !_isAutoConnectOn;
                });
              },
            ),
            Divider(),
            _buildDrawerItem(
              imagePath:
                  'assets/StarX Vpn Light Mode/Settings icons/Rotating IP.png',
              text: 'Rotating Ip',
              trailing: Image.asset(
                _isRotatingIpOn
                    ? 'assets/StarX Vpn Light Mode/Settings icons/Switch on.png'
                    : 'assets/StarX Vpn Light Mode/Settings icons/Switch off.png',
                height: 30.h,
                width: 30.w,
              ),
              onTap: () {
                setState(() {
                  _isRotatingIpOn = !_isRotatingIpOn;
                });
              },
            ),
            Divider(),
            _buildDrawerItem(
              imagePath:
                  'assets/StarX Vpn Light Mode/Settings icons/App Appearence.png',
              text: 'App Appearance',
              trailing: Image.asset(
                _isAppAppearanceExpanded
                    ? 'assets/StarX Vpn Light Mode/Settings icons/Chevron down.png'
                    : 'assets/StarX Vpn Light Mode/Settings icons/Chevron.png',
                height: 10.h,
                width: 10.w,
              ),
              onTap: () {
                setState(() {
                  _isAppAppearanceExpanded = !_isAppAppearanceExpanded;
                });
              },
            ),
            if (_isAppAppearanceExpanded) ...[
              _buildThemeOption(
                  'Light theme',
                  'assets/StarX Vpn Light Mode/Check Circle/Editing Unselected Dark.png',
                  'assets/StarX Vpn Light Mode/Check Circle/Editing Selected Dark.png'),
              Divider(indent: 20.w, endIndent: 20.w),
              _buildThemeOption(
                  'Dark theme',
                  'assets/StarX Vpn Light Mode/Check Circle/Editing Unselected Dark.png',
                  'assets/StarX Vpn Light Mode/Check Circle/Editing Selected Dark.png'),
            ],
            Divider(),
            _buildDrawerItem(
              imagePath:
                  'assets/StarX Vpn Light Mode/Settings icons/White list.png',
              text: 'White List',
              trailing: Image.asset(
                'assets/StarX Vpn Light Mode/Settings icons/Chevron.png',
                height: 10.h,
                width: 10.w,
              ),
              onTap: () {
                // Handle White List navigation
              },
            ),
            Divider(),
            _buildDrawerItem(
              imagePath:
                  'assets/StarX Vpn Light Mode/Settings icons/security-check.png',
              text: 'Security & Privacy',
              trailing: Image.asset(
                'assets/StarX Vpn Light Mode/Settings icons/Chevron.png',
                height: 10.h,
                width: 10.w,
              ),
              onTap: () {
                // Handle Security & Privacy navigation
              },
            ),
            Divider(),
            _buildDrawerItem(
              imagePath:
                  'assets/StarX Vpn Light Mode/Settings icons/customer-support.png',
              text: 'Help & Support',
              trailing: Image.asset(
                'assets/StarX Vpn Light Mode/Settings icons/Chevron.png',
                height: 10.h,
                width: 10.w,
              ),
              onTap: () {
                // Handle Help & Support navigation
              },
            ),
            Divider(),
            _buildDrawerItem(
              imagePath: 'assets/StarX Vpn Light Mode/Settings icons/Info.png',
              text: 'About us',
              trailing: Image.asset(
                'assets/StarX Vpn Light Mode/Settings icons/Chevron.png',
                height: 10.h,
                width: 10.w,
              ),
              onTap: () {
                // Handle Help & Support navigation
              },
            ),
            Divider(),
            _buildDrawerItem(
              imagePath:
                  'assets/StarX Vpn Light Mode/Settings icons/logout-02.png',
              text: 'Sign Out',
              trailing: Image.asset(
                'assets/StarX Vpn Light Mode/Settings icons/Chevron.png',
                height: 10.h,
                width: 10.w,
              ),
              onTap: () {
                // Handle Sign Out navigation
              },
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required String imagePath,
    required String text,
    Widget? trailing,
    required GestureTapCallback onTap,
  }) {
    return ListTile(
      leading: Image.asset(
        imagePath,
        height: 20.h,
        width: 20.w,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontFamily: 'Satoshi',
          fontSize: 15.sp,
        ),
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }

  Widget _buildThemeOption(
      String theme, String unselectedIconPath, String selectedIconPath) {
    bool isSelected = _selectedTheme == theme;
    return ListTile(
      title: Center(
        child: Text(
          theme,
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontSize: 15.sp,
            color: Color.fromARGB(255, 102, 101, 101),
          ),
        ),
      ),
      trailing: Image.asset(
        isSelected ? selectedIconPath : unselectedIconPath,
        height: 40.h,
        width: 40.w,
      ),
      onTap: () {
        setState(() {
          _selectedTheme = theme;
        });
      },
    );
  }
}

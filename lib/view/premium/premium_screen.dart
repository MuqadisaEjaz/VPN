import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/widgets/custom_appbar_two.dart';
import 'package:starxvpn_lightmode/widgets/my_button.dart';

class PremiumScreen extends StatefulWidget {
  @override
  _PremiumScreenState createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  int selectedBoxIndex = -1;

  void onBoxSelected(int index) {
    setState(() {
      if (selectedBoxIndex == index) {
        selectedBoxIndex = -1;
      } else {
        selectedBoxIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTwo(
        title: 'Premium',
        onBackPressed: () {
          Navigator.pushReplacementNamed(context, '/dashboard');
        },
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeatureItem(
              iconPath:
                  'assets/StarX Vpn Light Mode/Premium Sscreen icons/access.png',
              title: 'Strong Encryption',
              description: 'Maximum protection for your data',
            ),
            SizedBox(height: 16.h),
            FeatureItem(
              iconPath:
                  'assets/StarX Vpn Light Mode/Premium Sscreen icons/globe.png',
              title: 'Unlimited Access',
              description: 'Wide range of servers worldwide',
            ),
            SizedBox(height: 16.h),
            FeatureItem(
              iconPath:
                  'assets/StarX Vpn Light Mode/Premium Sscreen icons/rocket-01.png',
              title: 'High-Speed Servers',
              description: 'Swift seamless browsing with speed',
            ),
            SizedBox(height: 16.h),
            FeatureItem(
              iconPath:
                  'assets/StarX Vpn Light Mode/Premium Sscreen icons/unavailable.png',
              title: 'Ad-Free Browsing',
              description: 'Enjoy surfing without annoying ads',
            ),
            SizedBox(height: 40.h),
            PremiumBox(
              durationText: '1 Month',
              pricePerMonthText: '\$33.30 per month',
              totalPriceText: '\$99.9',
              isSelected: selectedBoxIndex == 0,
              onTap: () => onBoxSelected(0),
            ),
            SizedBox(height: 16.h),
            PremiumBox(
              durationText: '6 Months',
              pricePerMonthText: '\$26.66 per month',
              totalPriceText: '\$159.9',
              isSelected: selectedBoxIndex == 1,
              onTap: () => onBoxSelected(1),
            ),
            SizedBox(height: 16.h),
            PremiumBox(
              durationText: '12 Months',
              pricePerMonthText: '\$15.00 per month',
              totalPriceText: '\$239.9',
              isSelected: selectedBoxIndex == 2,
              onTap: () => onBoxSelected(2),
            ),
            Spacer(),
            Center(
              child: MyButton(
                text: 'Upgrade to premium',
                width: 300,
                isPrimary: true,
                isEnabled: selectedBoxIndex != -1,
                onTap: selectedBoxIndex != -1
                    ? () {
                        // Handle subscription
                      }
                    : null,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String description;

  const FeatureItem({
    required this.iconPath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          height: 30.h,
          width: 30.w,
        ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'SatoshiMedium',
                fontSize: 16.sp,
              ),
            ),
            Text(
              description,
              style: TextStyle(
                fontFamily: 'SatoshiMedium',
                fontSize: 14.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PremiumBox extends StatelessWidget {
  final String durationText;
  final String pricePerMonthText;
  final String totalPriceText;
  final bool isSelected;
  final VoidCallback onTap;

  const PremiumBox({
    required this.durationText,
    required this.pricePerMonthText,
    required this.totalPriceText,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.0.w),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.blueColor : Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: isSelected ? AppColor.blueColor : Colors.grey,
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              isSelected
                  ? 'assets/StarX Vpn Light Mode/Check Circle/Editing Selected Dark.png'
                  : 'assets/StarX Vpn Light Mode/Check Circle/Editing Unselected Dark.png',
              height: 40.h,
              width: 40.w,
            ),
            SizedBox(width: 16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  durationText,
                  style: TextStyle(
                    fontFamily: 'SatoshiMedium',
                    fontSize: 16.sp,
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  pricePerMonthText,
                  style: TextStyle(
                    fontFamily: 'SatoshiMedium',
                    fontSize: 14.sp,
                    color: isSelected ? Colors.grey : Colors.grey,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              totalPriceText,
              style: TextStyle(
                  fontFamily: 'SatoshiMedium',
                  fontSize: 16.sp,
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

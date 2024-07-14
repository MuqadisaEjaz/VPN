import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starxvpn_lightmode/Models/locations_model.dart';
import 'package:starxvpn_lightmode/const/app_colors.dart';
import 'package:starxvpn_lightmode/widgets/custom_location_item.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final String userName =
      "Syed Wajahat Hassan"; // Replace with actual user name
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
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
                      'Locations',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 20.sp,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: categories.asMap().entries.map((entry) {
                      int index = entry.key;
                      String category = entry.value;
                      Map<String, dynamic> categoryImage =
                          getCategoryImage(category);
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              category,
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 16.sp,
                                //fontWeight: FontWeight.bold,
                                color: selectedIndex == index
                                    ? AppColor.blueColor
                                    : Colors.black,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            if (selectedIndex == index)
                              Image.asset(
                                categoryImage['imagepath'],
                                width: categoryImage['width'],
                              ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 30.h),
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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Column(
                      children: locationData[selectedIndex]
                          .asMap()
                          .entries
                          .map((entry) {
                        int index = entry.key;
                        Map<String, dynamic> location = entry.value;
                        bool isPremium = categories[selectedIndex] == "Premium";
                        return Column(
                          children: [
                            CustomLocationItem(
                              imagePath: location["imagePath"],
                              countryName: location["countryName"],
                              cities: location["cities"],
                              isPremium: isPremium,
                              captial: location["capital"],
                            ),
                            if (index < locationData[selectedIndex].length - 1)
                              Divider(
                                thickness: 3,
                                height: 5.h,
                                color: Color.fromARGB(255, 224, 224, 224),
                              ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}

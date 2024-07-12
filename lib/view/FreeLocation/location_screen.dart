import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  final List<String> categories = [
    "List",
    "Best",
    "Favourite",
    "Recent",
    "Premium"
  ];

  final List<List<Map<String, dynamic>>> locationData = [
    [
      // List data
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
        "countryName": 'United Kingdom',
        "cities": ['Bedford', 'Congleton'],
        "capital": 'London',
      },
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/canada.png',
        "countryName": 'Canada',
        "cities": ['City X', 'City Y', 'City Z'],
        "capital": 'Ottawa',
      },
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/germany.png',
        "countryName": 'Germany',
        "cities": ['City X', 'City Y', 'City Z'],
        "capital": 'Berlin',
      },
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/thailand.png',
        "countryName": 'Thailand',
        "cities": ['City X', 'City Y', 'City Z'],
        "capital": 'Bangkok',
      },
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/canada.png',
        "countryName": 'Canada',
        "cities": ['City X', 'City Y', 'City Z'],
        "capital": 'Victoria',
      },
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/iceland.png',
        "countryName": 'Iceland',
        "cities": ['City X', 'City Y', 'City Z'],
        "capital": 'Reykjavk',
      },
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/viet-nam.png',
        "countryName": 'Vietnam',
        "cities": ['City X', 'City Y', 'City Z'],
        "capital": 'Ho Chi Minh',
      },
    ],
    [
      // Best data
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
        "countryName": 'Best Country 1',
        "cities": ['Best City A', 'Best City B', 'Best City C'],
        "capital": 'Best Capital 1',
      },
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
        "countryName": 'Best Country 2',
        "cities": ['Best City X', 'Best City Y', 'Best City Z'],
        "capital": 'Best Capital 2',
      },
    ],
    [
      // Favourite data
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
        "countryName": 'Favourite Country 1',
        "cities": ['Favourite City A', 'Favourite City B', 'Favourite City C'],
        "capital": 'Favourite Capital 1',
      },
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
        "countryName": 'Favourite Country 2',
        "cities": ['Favourite City X', 'Favourite City Y', 'Favourite City Z'],
        "capital": 'Favourite Capital 2',
      },
    ],
    [
      // Recent data
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
        "countryName": 'Recent Country 1',
        "cities": ['Recent City A', 'Recent City B', 'Recent City C'],
        "capital": 'Recent Capital 1',
      },
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
        "countryName": 'Recent Country 2',
        "cities": ['Recent City X', 'Recent City Y', 'Recent City Z'],
        "capital": 'Recent Capital 2',
      },
    ],
    [
      // Premium data
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
        "countryName": 'Premium Country 1',
        "cities": ['Premium City A', 'Premium City B', 'Premium City C'],
        "capital": 'Premium Capital 1',
      },
      {
        "imagePath":
            'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
        "countryName": 'Premium Country 2',
        "cities": ['Premium City X', 'Premium City Y', 'Premium City Z'],
        "capital": 'Premium Capital 2',
      },
    ],
  ];

  Map<String, dynamic> getCategoryImage(String category) {
    switch (category) {
      case "List":
        return {
          'imagepath': 'assets/StarX Vpn Light Mode/Down Bar Line/List.png',
          'width': 30.w
        };
      case "Best":
        return {
          'imagepath': 'assets/StarX Vpn Light Mode/Down Bar Line/Best.png',
          'width': 35.w
        };
      case "Favourite":
        return {
          'imagepath': 'assets/StarX Vpn Light Mode/Down Bar Line/Favorite.png',
          'width': 75.w
        };
      case "Recent":
        return {
          'imagepath': 'assets/StarX Vpn Light Mode/Down Bar Line/Recent.png',
          'width': 55.w
        };
      case "Premium":
        return {
          'imagepath': 'assets/StarX Vpn Light Mode/Down Bar Line/Premium.png',
          'width': 70.w
        };
      default:
        return {
          'imagepath': 'assets/StarX Vpn Light Mode/Down Bar Line/List.png',
          'width': 20.w
        };
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0), // Rounded corners
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
                  SizedBox(height: 10.h), // Space between the line and the text
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
                      textAlign: TextAlign.center, // Center align text
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
                            if (selectedIndex ==
                                index) // Only show the image if the category is active
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

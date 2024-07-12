import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLocationItem extends StatefulWidget {
  final String imagePath;
  final String countryName;
  final String captial;
  final List<String> cities;
  final bool isPremium; // New property

  const CustomLocationItem({
    Key? key,
    required this.imagePath,
    required this.countryName,
    required this.cities,
    required this.captial,
    this.isPremium = false, // Default to false
  }) : super(key: key);

  @override
  _CustomLocationItemState createState() => _CustomLocationItemState();
}

class _CustomLocationItemState extends State<CustomLocationItem> {
  bool isExpanded = false;
  int selectedIndex = -1; // Track selected index, -1 means no selection

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Image.asset(
            widget.imagePath,
            height: 50.h,
            width: 50.w,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.countryName,
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 16.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  Text(
                    widget.captial,
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.isPremium)
                Image.asset(
                  isExpanded
                      ? 'assets/StarX Vpn Light Mode/lock and unlock icon/unlock.png'
                      : 'assets/StarX Vpn Light Mode/lock and unlock icon/square-lock-02.png',
                  height: 20.h,
                  width: 20.w,
                ),
              IconButton(
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                icon: Icon(isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down),
              ),
            ],
          ),
        ),
        if (isExpanded)
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 5.h), // Adjust spacing as needed
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: Divider(
                  height: 1.h, // Adjust the height of the divider line
                  color: Colors.grey.shade300, // Optionally set the color
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Divider(
                    height: 1.h, // Adjust the height of the divider line
                    color: Colors.grey.shade300, // Optionally set the color
                  ),
                ),
                itemCount: widget.cities.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(
                      'assets/StarX Vpn Light Mode/Location Icon/location-04.png',
                      height: 30.h,
                      width: 30.w,
                    ),
                    title: Text(
                      widget.cities[index],
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 14.sp,
                      ),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (selectedIndex == index) {
                            selectedIndex = -1; // Deselect if already selected
                          } else {
                            selectedIndex = index; // Select new item
                          }
                        });
                      },
                      child: Image.asset(
                        selectedIndex == index
                            ? 'assets/StarX Vpn Light Mode/Check Circle/Editing Selected Dark.png'
                            : 'assets/StarX Vpn Light Mode/Check Circle/Editing Unselected Dark.png',
                        height: 30.h,
                        width: 30.w,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
      ],
    );
  }
}

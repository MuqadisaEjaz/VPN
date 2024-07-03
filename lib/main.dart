import 'package:flutter/material.dart';
import 'package:starxvpn_lightmode/routes/app-routes.dart'; // Replace with your actual routes file
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
          375, 812), // Set the design size (width, height) based on your design
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'StarX Vpn',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: AppRoutes.generateRoute,
        );
      },
    );
  }
}

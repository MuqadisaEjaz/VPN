import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import SharedPreferences
import 'package:starxvpn_lightmode/routes/app-routes.dart'; // Replace with your actual routes file

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await resetOnboardingStatus(); // Reset onboarding status on app startup

  runApp(MyApp());
}

Future<void> resetOnboardingStatus() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('onboardingCompleted', false);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812), // Set the design size based on your design
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

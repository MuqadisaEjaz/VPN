// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';
// import 'package:starxvpn_lightmode/providers/login_provider.dart';
// import 'package:starxvpn_lightmode/widgets/custom_text_fields.dart'; // Assuming you have your CustomTextField widget here
// import 'package:starxvpn_lightmode/widgets/my_button.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<LoginProvider>(
//       create: (_) => LoginProvider(),
//       child: SafeArea(
//         child: Scaffold(
//           appBar: AppBar(
//             leading: IconButton(
//               icon: Image.asset(
//                 'assets/StarX Vpn Light Mode/Back Button/Back Button.png',
//                 height: 60.h,
//                 width: 60.w,
//               ),
//               onPressed: () {
//                 // Implement navigation or desired action
//               },
//             ),
//             title: Text(
//               'Login into account',
//               style: TextStyle(
//                 fontFamily: 'Satoshi',
//                 fontSize: 22.sp,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//           ),
//           body: SingleChildScrollView(
//             child: Container(
//               height: MediaQuery.of(context).size.height -
//                   kToolbarHeight -
//                   MediaQuery.of(context).padding.top,
//               child: Stack(
//                 children: [
//                   // Positioned for Centered Map Illustration
//                   Positioned.fill(
//                     top: kToolbarHeight + 5.h, // Adjust top position as needed
//                     child: Center(
//                       child: Image.asset(
//                         'assets/StarX Vpn Light Mode/Map Illustration/Group.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   // Column for Login Form
//                   Positioned.fill(
//                     child: Column(
//                       children: [
//                         // Email Text and Input Field
//                         Padding(
//                           padding: EdgeInsets.symmetric(
//                               horizontal: 20.w, vertical: 40.h),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Email',
//                                 style: TextStyle(
//                                   fontFamily: 'Satoshi',
//                                   fontSize: 16.sp,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               SizedBox(height: 10.h),
//                               CustomTextField(
//                                 hint: 'example@example',
//                                 controller: null,
//                                 suffixIcon: null,
//                               ),
//                               SizedBox(height: 20.h),
//                               Text(
//                                 'Password',
//                                 style: TextStyle(
//                                   fontFamily: 'Satoshi',
//                                   fontSize: 16.sp,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               SizedBox(height: 10.h),
//                               Consumer<LoginProvider>(
//                                 builder: (context, provider, child) {
//                                   return CustomTextField(
//                                     hint: 'example',
//                                     hidePassword: !provider.isPasswordVisible,
//                                     suffixIcon: GestureDetector(
//                                       onTap: () {
//                                         provider.togglePasswordVisibility();
//                                       },
//                                       child: Image.asset(
//                                         'assets/StarX Vpn Light Mode/Eye logo/visibility_off.png',
//                                         height: 10.h,
//                                         width: 10.w,
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               ),
//                               SizedBox(height: 30.h),
//                               MyButton(
//                                 text: 'Sign In',
//                                 onTap: () {
//                                   print('Sign In pressed');
//                                 },
//                                 isPrimary: true,
//                                 width: double.infinity,
//                               ),
//                               SizedBox(height: 10.h),
//                               Center(
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     print('Forgot Password pressed');
//                                   },
//                                   child: Text(
//                                     'Forgot Password?',
//                                     style: TextStyle(
//                                       fontFamily: 'Satoshi',
//                                       fontSize: 14.sp,
//                                       color: Color.fromARGB(255, 0, 0, 0),
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Instead of bottomSheet, use a Positioned container at the bottom
//           bottomNavigationBar: Container(
//             padding: EdgeInsets.all(40.w),
//             child: Text(
//               'By using VPN, you agree to the Terms and Privacy Policy',
//               style: TextStyle(
//                 fontFamily: 'Satoshi',
//                 fontSize: 16.sp,
//                 color: Color.fromARGB(255, 105, 104, 104),
//               ),
//               textAlign: TextAlign.center, // Center align the text
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:starxvpn_lightmode/providers/login_provider.dart';
import 'package:starxvpn_lightmode/widgets/custom_text_fields.dart';
import 'package:starxvpn_lightmode/widgets/my_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginProvider>(
      create: (_) => LoginProvider(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Image.asset(
                'assets/StarX Vpn Light Mode/Back Button/Back Button.png',
                height: 60.h,
                width: 60.w,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/onboarding');
              },
            ),
            title: Text(
              'Login into account',
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontSize: 22.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height -
                  kToolbarHeight -
                  MediaQuery.of(context).padding.top,
              child: Stack(
                children: [
                  Positioned.fill(
                    top: kToolbarHeight + 5.h,
                    child: Center(
                      child: Image.asset(
                        'assets/StarX Vpn Light Mode/Map Illustration/Group.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 40.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              CustomTextField(
                                hint: 'example@example',
                                controller: null,
                                suffixIcon: null,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                'Password',
                                style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Consumer<LoginProvider>(
                                builder: (context, provider, child) {
                                  return CustomTextField(
                                    hint: 'example',
                                    hidePassword: !provider.isPasswordVisible,
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        provider.togglePasswordVisibility();
                                      },
                                      child: Image.asset(
                                        'assets/StarX Vpn Light Mode/Eye logo/visibility_off.png',
                                        height: 10.h,
                                        width: 10.w,
                                      ),
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: 30.h),
                              Consumer<LoginProvider>(
                                builder: (context, provider, child) {
                                  return MyButton(
                                    text: 'Sign In',
                                    onTap: () async {
                                      provider.setLoading(true);
                                      // Simulate a network call
                                      await Future.delayed(
                                          Duration(seconds: 2));
                                      provider.setLoading(false);
                                      print('Sign In pressed');
                                    },
                                    isPrimary: true,
                                    width: double.infinity,
                                    isLoading: provider.isLoading,
                                  );
                                },
                              ),
                              SizedBox(height: 10.h),
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/resetpassword');
                                  },
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      fontSize: 14.sp,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.all(40.w),
            child: Text(
              'By using VPN, you agree to the Terms and Privacy Policy',
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontSize: 16.sp,
                color: Color.fromARGB(255, 105, 104, 104),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

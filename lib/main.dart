import 'package:ahmad_practices/home_screen/kyc_status_verified.dart';
import 'package:ahmad_practices/password_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_screen/home_screen.dart';
import 'widget/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenUtilInit(
          designSize: const Size(375, 814),
          minTextAdapt: true,
          builder: (a, b) {
            return LayoutBuilder(builder: (context, constraints) {
              return OrientationBuilder(builder: (context, orientation) {
                SizeConfig().init(constraints, orientation);
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'SilkRoute',
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                    fontFamily: 'Avenir',
                    scaffoldBackgroundColor: Colors.white,
                  ),
                  home: const KycStatusVerified(),
                );
              });
            });
          }),
    );
  }
}
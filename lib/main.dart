import 'package:ahmad_practices/cashaa_and_wallet/cashaa_wallet.dart';
import 'package:ahmad_practices/forget_password_ui.dart';
import 'package:ahmad_practices/home_screen/face.dart';
import 'package:ahmad_practices/home_screen/face_enable_screen.dart';
import 'package:ahmad_practices/home_screen/kyc_status_verified.dart';
import 'package:ahmad_practices/password_check.dart';
import 'package:ahmad_practices/zomato_screen/chicken_mandi_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'cashaa_exchange_screens/exchange_screen.dart';
import 'deposit_coin_network/deposit_top_up_screen.dart';
import 'home_screen/bottomsheet_navigation_bar_home.dart';
import 'home_screen/home_screen.dart';
import 'language_change_screen/lang_change_screen.dart';
import 'language_change_screen/local_string.dart';
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
                return GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'SilkRoute',
                  translations: LocaleString(),
                  locale: const Locale('en' , 'US'),
                  fallbackLocale: const Locale('hi' , 'IN'),
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                    fontFamily: 'Avenir',
                    scaffoldBackgroundColor: Colors.white,
                  ),
                  home:  const NavigationBarBottomSheet(),
                );
              });
            });
          }),
    );
  }
}
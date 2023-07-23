import 'package:ahmad_practices/cashaa_exchange_screens/exchange_screen.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/deposit_coin_network/deposit_top_up_screen.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../buttons/blue_button.dart';
import '../constant/app_color/app_color.dart';

class LanguageChangeScreen extends StatefulWidget {
  const LanguageChangeScreen({super.key});

  @override
  State<LanguageChangeScreen> createState() => _LanguageChangeScreenState();
}

class _LanguageChangeScreenState extends State<LanguageChangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ImagePath.gbgIcon,
            width: 150 * SizeConfig.heightMultiplier!,
          ),
          SizedBox(
            height: 25 * SizeConfig.heightMultiplier!,
          ),
          Text(
            "Please Select Your Language",
            style: TextStyle(
                color: AppColors.blu50DB,
                fontSize: 15 * SizeConfig.textMultiplier!,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 25 * SizeConfig.heightMultiplier!,
          ),
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(
            height: 25 * SizeConfig.heightMultiplier!,
          ),
          CommonButton(
              title: "हिंदी",
              onTap: (){
                Get.updateLocale(Locale('hi' , 'IN'));
              },
              buttonColor: AppColors.green7B
          ),
          SizedBox(
            height: 25 * SizeConfig.heightMultiplier!,
          ),
          CommonButton(
              title: "English",
              onTap: (){
                Get.updateLocale(Locale('en' , 'US'));
              },
              buttonColor: AppColors.green7B
          ),
        ],
      ),
    );
  }
}

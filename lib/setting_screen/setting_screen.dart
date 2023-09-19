import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

import '../constant/app_color/app_color.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                _showBottomSheet();
              },
              child: Text("fhhfh")),
        ],
      ),
    );
  }

  _showBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        isDismissible: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 320 * SizeConfig.heightMultiplier!,
            child: PageView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: AppColors.kWhite,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10 * SizeConfig.heightMultiplier!,
                      ),
                      Center(
                        child: Container(
                          height: 4 * SizeConfig.heightMultiplier!,
                          width: 50 * SizeConfig.widthMultiplier!,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                4 * SizeConfig.widthMultiplier!),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18 * SizeConfig.heightMultiplier!,
                      ),
                      Text("hgjkljiuhytryuhjikol")
                    ],
                  ),
                );
              },
            ),
          );
        });
  }
}
